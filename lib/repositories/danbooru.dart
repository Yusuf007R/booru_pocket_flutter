import 'dart:async';

import 'package:booru_pocket_flutter/models/api/autocomplete.dart';
import 'package:booru_pocket_flutter/models/api/post.dart';
import 'package:dio/dio.dart';

class DanbooruRespository {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://safebooru.donmai.us'));

  Future<List<Post>> getPosts(
      {required int page, required int limit, required String tags}) async {
    Response response = await dio.get('/posts.json',
        queryParameters: {'page': page, 'limit': limit, 'tags': tags});
    return List<Post>.from(response.data
        .where(((element) => element['id'] != null))
        .map((element) => Post.fromJson(element)));
  }

  Future<List<AutoComplete>> getAutoComplete(String query) async {
    Response response = await dio.get('/autocomplete.json', queryParameters: {
      'search[query]': query,
      'search[type]': 'tag_query',
      'limit': 5,
    });
    return List<AutoComplete>.from(
        response.data.map((element) => AutoComplete.fromJson(element)));
  }
}
