// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_grid_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryGridStateImpl _$$GalleryGridStateImplFromJson(
        Map<String, dynamic> json) =>
    _$GalleryGridStateImpl(
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gridStatus:
          $enumDecodeNullable(_$GridStatusEnumMap, json['gridStatus']) ??
              GridStatus.idle,
      uniqueKey: json['uniqueKey'] as String,
      selectedPosts: (json['selectedPosts'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GalleryGridStateImplToJson(
        _$GalleryGridStateImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'gridStatus': _$GridStatusEnumMap[instance.gridStatus]!,
      'uniqueKey': instance.uniqueKey,
      'selectedPosts': instance.selectedPosts,
    };

const _$GridStatusEnumMap = {
  GridStatus.refreshing: 'refreshing',
  GridStatus.idle: 'idle',
  GridStatus.fetching: 'fetching',
};
