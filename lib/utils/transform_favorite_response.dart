import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Future<List<int>> transformFavoriteResponse(
    List<Response<dynamic>> responses) async {
  return await compute(_transformFavoriteResponse, responses);
}

List<int> _transformFavoriteResponse(List<Response<dynamic>> responses) {
  List<int> favorites = [];
  for (final response in responses) {
    for (final favorite in response.data) {
      favorites.add(favorite['post_id']);
    }
  }

  return favorites;
}
