import 'dart:async';

import 'package:booru_pocket_flutter/models/api/post.dart';
import 'package:dio/dio.dart';

class DanbooruRespository {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://safebooru.donmai.us'));

  Future<List<Post>> getPosts(
      {required int page,
      required int limit,
      required List<String> tags}) async {
    Response response = await dio.get('/posts.json', queryParameters: {
      'page': page,
      'limit': limit,
      'tags': tags.join(' ')
    });
    // var json = jsonDecode(response.data);
    return List<Post>.from(response.data
        .where(((element) => element['id'] != null))
        .map((element) => Post.fromJson(element)));
  }
}
