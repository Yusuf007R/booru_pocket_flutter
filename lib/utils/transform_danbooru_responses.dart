import 'dart:convert';

import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/utils/sentry_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Future<Map<int, bool>> transformFavoriteResponse(
  List<Response<dynamic>> responses,
) async {
  return await compute(_transformFavoriteResponse, responses);
}

Future<List<Post>> transformPostsResponse(
  dynamic data,
  User user,
) async {
  return await compute(_transformPostsResponse, (data, user));
}

bool _isPostVisible(Map<String, dynamic> element, User user) {
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
      ['loli', 'shota'].any((tag) => element['tag_string'].contains(tag))) {
    return false;
  }
  return true;
}

Map<int, bool> _transformFavoriteResponse(List<Response<dynamic>> responses) {
  Map<int, bool> favorites = {};
  for (var element in responses) {
    final decodedJson = jsonDecode(element.data);
    if (decodedJson is List) {
      for (final post in decodedJson) {
        favorites[post['post_id']] = true;
      }
    }
  }
  return favorites;
}

List<Post> _transformPostsResponse((dynamic, User) args) {
  final data = args.$1;
  final user = args.$2;
  final json = jsonDecode(data);
  List<Post> posts = [];

  if (json is List) {
    for (final element in json) {
      try {
        if (!_isPostVisible(element, user)) continue;
        final post = Post.fromJson(element);
        posts.add(post);
      } catch (error, stackTrace) {
        reportException(
          "Error while parsing Post",
          error,
          stackTrace: stackTrace,
          extras: {"Post Id": element['id'].toString()},
        );
      }
    }
  }

  return posts;
}
