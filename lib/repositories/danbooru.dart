import 'dart:async';
import 'dart:convert';

import 'package:booru_pocket_flutter/models/api/autocomplete/autocomplete.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/utils/compute_json_decode.dart';
import 'package:dio/dio.dart';

class DanbooruRepository {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://safebooru.donmai.us'));

  DanbooruRepository() {
    (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
  }

  Future<List<Post>> getPosts(PostParams params) async {
    Response response = await dio.get(
      '/posts.json',
      queryParameters: params.toJson(),
    );

    return List<Post>.from(response.data
        .where(((element) => element['id'] != null))
        .map((element) => Post.fromJson(element)));
  }

  Future<List<Post>> getPopularPosts(PopularParams params) async {
    Response response = await dio.get('/explore/posts/popular.json',
        queryParameters: params.toJson());
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

  Future<User> setBasicAuthHeader(String username, String password) async {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String enconded = stringToBase64.encode('$username:$password');
    dio.options.headers['Authorization'] = 'Basic $enconded';

    try {
      return await getUserProfile();
    } catch (e) {
      dio.options.headers.remove('Authorization');
      rethrow;
    }
  }
}
