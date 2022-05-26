import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:booru_pocket_flutter/models/api/autocomplete/autocomplete.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/utils/compute_json_decode.dart';
import 'package:booru_pocket_flutter/utils/transform_favorite_response.dart';
import 'package:dio/dio.dart';

class DanbooruRepository {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://danbooru.donmai.us/'));

  DanbooruRepository() {
    dio.transformer = MyTransformer();
  }

  Future<List<Post>> getPosts(Map<String, dynamic> query) async {
    Response response = await dio.get(
      '/posts.json',
      queryParameters: query,
    );
    return List<Post>.from(response.data
        .where(((element) => element['id'] != null))
        .map((element) => Post.fromJson(element)));
  }

  Future<User> getUserProfile() async {
    Response response = await dio.get('/profile.json');
    return User.fromJson(response.data);
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
    return List<AutoComplete>.from(
        response.data.map((element) => AutoComplete.fromJson(element)));
  }

  Future<Map<int, bool>> getFavorites(String username, int page) async {
    List<Response<dynamic>> responses = [];

    for (var i = 1; i <= page; i++) {
      responses.add(await dio.get('/favorites.json', queryParameters: {
        'search[user_name]': username,
        'commit': 'Search',
        'limit': 1000,
        'page': i,
      }));
    }
    return await transformFavoriteResponse(responses);
  }

  Future<bool> deleteFavorite(int postId) async {
    final form = FormData();
    form.fields.add(const MapEntry(
      '_method',
      'delete',
    ));
    await dio.post(
      '/favorites/$postId.json',
      data: form,
    );
    return false;
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
}
