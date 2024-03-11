import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:BooruPocket/environment/environment.dart';
import 'package:BooruPocket/models/api/autocomplete/autocomplete.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/utils/compute_json_decode.dart';
import 'package:BooruPocket/utils/sentry_utils.dart';
import 'package:BooruPocket/utils/transform_favorite_response.dart';
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
            originalError: error,
            stackTrace: stackTrace,
            extras: {"AutoComplete": element.toString()},
          );
          return null;
        }
      }),
    ).whereType<AutoComplete>().toList();
  }

  Future<Map<int, bool>> getFavorites(String username, int page) async {
    List<Response<dynamic>> responses = [];

    for (var i = 1; i <= page; i++) {
      responses.add(
        await dio.get(
          '/favorites.json',
          queryParameters: {
            'search[user_name]': username,
            'commit': 'Search',
            'limit': 1000,
            'page': i,
          },
        ),
      );
    }
    return await transformFavoriteResponse(responses);
  }

  Future<List<Post>> getPosts(Map<String, dynamic> query, User user) async {
    Response response = await dio.get(
      '/posts.json',
      queryParameters: query,
    );

    return List<Post?>.from(
      response.data.where(
        ((element) {
          if (element['id'] == null ||
              [element['is_deleted'], element['is_banned']].contains(true)) {
            return false;
          }
          // here we filter out posts that are not visible to the user
          final isGoldOrHigher = user.map(
            noAuthenticated: (_) => false,
            authenticating: (_) => false,
            authenticated: (value) => value.level > 10,
          );
          if (!isGoldOrHigher &&
              ['loli', 'shota']
                  .any((tag) => element['tag_string'].contains(tag))) {
            return false;
          }
          return true;
        }),
      ).map((element) {
        try {
          return Post.fromJson(element);
        } catch (error, stackTrace) {
          reportException(
            "Error while parsing Post",
            originalError: error,
            stackTrace: stackTrace,
            extras: {"Post Id": element['id'].toString()},
          );

          return null;
        }
      }),
    ).whereType<Post>().toList();
  }

  Future<User> getUserProfile() async {
    Response response = await dio.get('/profile.json');
    return User.fromJson(response.data);
  }

  Future<User> setBasicAuthHeader(String username, String password) async {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String enconded = stringToBase64.encode('$username:$password');
    dio.options.headers[HttpHeaders.authorizationHeader] = 'Basic $enconded';

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
