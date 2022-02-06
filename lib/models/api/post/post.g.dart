// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      tags: _tagsArrayFromJson(json['tag_string_general'] as String),
      artistTag: _tagsArrayFromJson(json['tag_string_artist'] as String),
      characterTag: _tagsArrayFromJson(json['tag_string_character'] as String),
      seriesTag: _tagsArrayFromJson(json['tag_string_copyright'] as String),
      rating: _ratingFromJson(json['rating'] as String),
      source: json['source'] as String,
      previewFileUrl: json['preview_file_url'] as String,
      largeFileUrl: json['large_file_url'] as String,
      fileUrl: json['file_url'] as String,
      fileExt: json['file_ext'] as String,
      imageWidth: (json['image_width'] as num).toDouble(),
      imageHeight: (json['image_height'] as num).toDouble(),
      size: (json['file_size'] as num).toDouble(),
      score: json['score'] as int,
      favoriteCount: json['fav_count'] as int,
      uploaderId: json['uploader_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      video: json['video'] as String?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'tag_string_general': instance.tags,
      'tag_string_artist': instance.artistTag,
      'tag_string_character': instance.characterTag,
      'tag_string_copyright': instance.seriesTag,
      'rating': _$PostRatingEnumMap[instance.rating],
      'source': instance.source,
      'preview_file_url': instance.previewFileUrl,
      'large_file_url': instance.largeFileUrl,
      'file_url': instance.fileUrl,
      'file_ext': instance.fileExt,
      'image_width': instance.imageWidth,
      'image_height': instance.imageHeight,
      'file_size': instance.size,
      'score': instance.score,
      'fav_count': instance.favoriteCount,
      'uploader_id': instance.uploaderId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'video': instance.video,
    };

const _$PostRatingEnumMap = {
  PostRating.safe: 'safe',
  PostRating.questionable: 'questionable',
  PostRating.explicit: 'explicit',
  PostRating.unknown: 'unknown',
};
