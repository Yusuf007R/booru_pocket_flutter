import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Future<Map<int, bool>> transformFavoriteResponse(
    List<Response<dynamic>> responses) async {
  return await compute(_transformFavoriteResponse, responses);
}

Map<int, bool> _transformFavoriteResponse(List<Response<dynamic>> responses) {
  Map<int, bool> favorites = {};
  for (var element in responses) {
    favorites.addAll({for (var post in element.data) post['post_id']: true});
  }
  return favorites;
}
