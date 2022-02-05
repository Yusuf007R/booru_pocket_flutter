// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_grid_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GalleryGridState _$$_GalleryGridStateFromJson(Map<String, dynamic> json) =>
    _$_GalleryGridState(
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loading: json['loading'] as bool? ?? false,
      refreshing: json['refreshing'] as bool? ?? false,
      uniqueKey: json['uniqueKey'] as String,
    );

Map<String, dynamic> _$$_GalleryGridStateToJson(_$_GalleryGridState instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'loading': instance.loading,
      'refreshing': instance.refreshing,
      'uniqueKey': instance.uniqueKey,
    };
