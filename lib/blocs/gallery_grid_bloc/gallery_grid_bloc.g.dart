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
      gridStatus:
          $enumDecodeNullable(_$GridStatusEnumMap, json['gridStatus']) ??
              GridStatus.idle,
      uniqueKey: json['uniqueKey'] as String,
    );

Map<String, dynamic> _$$_GalleryGridStateToJson(_$_GalleryGridState instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'gridStatus': _$GridStatusEnumMap[instance.gridStatus],
      'uniqueKey': instance.uniqueKey,
    };

const _$GridStatusEnumMap = {
  GridStatus.refreshing: 'refreshing',
  GridStatus.idle: 'idle',
  GridStatus.fetching: 'fetching',
};
