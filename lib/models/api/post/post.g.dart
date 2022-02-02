// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      tags: _fromJson(json['tag_string'] as String),
      artistTag: json['tag_string_artist'] as String,
      rating: json['rating'] as String?,
      source: json['source'] as String,
      previewFileUrl: json['preview_file_url'] as String,
      largeFileUrl: json['large_file_url'] as String,
      fileUrl: json['file_url'] as String,
      fileExt: json['file_ext'] as String,
      imageWidth: (json['image_width'] as num).toDouble(),
      imageHeight: (json['image_height'] as num).toDouble(),
      score: json['score'] as int,
      favoriteCount: json['fav_count'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      video: json['video'] as String?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'tag_string': instance.tags,
      'tag_string_artist': instance.artistTag,
      'rating': instance.rating,
      'source': instance.source,
      'preview_file_url': instance.previewFileUrl,
      'large_file_url': instance.largeFileUrl,
      'file_url': instance.fileUrl,
      'file_ext': instance.fileExt,
      'image_width': instance.imageWidth,
      'image_height': instance.imageHeight,
      'score': instance.score,
      'fav_count': instance.favoriteCount,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'video': instance.video,
    };
