import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:BooruPocket/environment/environment.dart';
import 'package:BooruPocket/models/api/autocomplete/autocomplete.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/utils/compute_json_decode.dart';
import 'package:BooruPocket/utils/sentry_utils.dart';
import 'package:BooruPocket/utils/transform_danbooru_responses.dart';
import 'package:dio/dio.dart';

class DanbooruRepository {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: Environments.danBooruUrl,
    ),
  );

  DanbooruRepository() {
    dio.transformer = MyTransformer();
  }

  Future<bool> addFavorite(
    int postId,
  ) async {
    await dio.post(
      '/favorites.json',
      queryParameters: {
        'post_id': postId,
      },
    );
    return true;
  }

  Future<bool> deleteFavorite(int postId) async {
    final form = FormData();
    form.fields.add(
      const MapEntry(
        '_method',
        'delete',
      ),
    );
    await dio.post(
      '/favorites/$postId.json',
      data: form,
    );
    return false;
  }

  Future<List<AutoComplete>> getAutoComplete(String query) async {
    Response response = await dio.get(
      '/autocomplete.json',
      queryParameters: {
        'search[query]': query,
        'search[type]': 'tag_query',
        'limit': 5,
      },
    );
    return List<AutoComplete?>.from(
      response.data.map((element) {
        try {
          return AutoComplete.fromJson(element);
        } catch (error, stackTrace) {
          reportException(
            "Error while parsing AutoComplete",
            error,
            stackTrace: stackTrace,
            extras: {"AutoComplete": element.toString()},
          );
          return null;
        }
      }),
    ).whereType<AutoComplete>().toList();
  }

  Future<Map<int, bool>> getFavorites(String username, int page) async {
    late final futures = <Future<Response<dynamic>>>[];
    for (var i = 1; i <= page; i++) {
      futures.add(
        dio.get(
          '/favorites.json',
          queryParameters: {
            'search[user_name]': username,
            'commit': 'Search',
            'limit': 1000,
            'page': i,
          },
          options: Options(responseType: ResponseType.plain),
        ),
      );
    }
    return await transformFavoriteResponse(await Future.wait(futures));
  }

  Future<List<Post>> getPosts(Map<String, dynamic> query, User user) async {
    Response response = await dio.get(
      '/posts.json',
      queryParameters: query,
      options: Options(responseType: ResponseType.plain),
    );

    return await transformPostsResponse(response.data, user);
  }

  Future<User> getUserProfile() async {
    Response response = await dio.get('/profile.json');
    return User.fromJson(response.data);
  }

  Future<User> setBasicAuthHeader(String username, String password) async {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String encoded = stringToBase64.encode('$username:$password');
    dio.options.headers[HttpHeaders.authorizationHeader] = 'Basic $encoded';

    try {
      return await getUserProfile();
    } catch (e) {
      dio.options.headers.remove('Authorization');
      rethrow;
    }
  }

  void setUserAgent(String userAgent) {
    dio.options.headers['user-agent'] = userAgent;
  }
}
