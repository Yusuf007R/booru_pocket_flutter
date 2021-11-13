import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:equatable/equatable.dart';

class QueryParams extends Equatable {
  final int page;
  final int limit;
  final String? postTags;
  final DateTime? popularDate;
  final DateTime? popularScale;
  final String? recommendTags;
  final String? recommendPost;
  final String? recommendUser;
  

  const QueryParams({
    this.page = 1,
    this.limit = 50,
    this.postTags,
    this.popularDate,
    this.popularScale,
    this.recommendTags,
    this.recommendPost,
    this.recommendUser,
  });

  QueryParams copyWith({
    int? page,
    int? limit,
    String? postTags,
    DateTime? popularDate,
    DateTime? popularScale,
    String? recommendTags,
    String? recommendPost,
    String? recommendUser,
  }) =>
      QueryParams(
        limit: limit ?? this.limit,
        page: page ?? this.page,
        postTags: postTags ?? this.postTags,
        popularDate: popularDate ?? this.popularDate,
        popularScale: popularScale ?? this.popularScale,
        recommendTags: recommendTags ?? this.recommendTags,
        recommendPost: recommendPost ?? this.recommendPost,
        recommendUser: recommendUser ?? this.recommendUser,
      );

  Map<String, dynamic> toMap(GalleryType type) {
    switch (type) {
      case GalleryType.post:
        return {
          'page': page,
          'limit': limit,
          'tags': postTags,
        };
      case GalleryType.popular:
        return {
          'page': page,
          'limit': limit,
          'date': popularDate,
          'scale': popularDate,
        };
      case GalleryType.recommended:
        return {
          'page': page,
          'limit': limit,
          'search[user_name]': recommendUser,
          'search[post_tags_match]': recommendTags,
          'search[post_id]': recommendPost,
        };
      default:
        return {};
    }
  }

  @override
  List<Object?> get props => [
        page,
        limit,
        postTags,
        popularDate,
        popularScale,
        recommendPost,
        recommendTags,
        recommendUser
      ];
}
