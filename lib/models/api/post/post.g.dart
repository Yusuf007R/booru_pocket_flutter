// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as int,
      tags: _tagsArrayFromJson(json['tag_string_general'] as String),
      artistTag: _tagsArrayFromJson(json['tag_string_artist'] as String),
      characterTag: _tagsArrayFromJson(json['tag_string_character'] as String),
      seriesTag: _tagsArrayFromJson(json['tag_string_copyright'] as String),
      rating: _ratingFromJson(json['rating'] as String),
      source: json['source'] as String,
      fileExt: json['file_ext'] as String,
      imageWidth: (json['image_width'] as num).toDouble(),
      imageHeight: (json['image_height'] as num).toDouble(),
      size: (json['file_size'] as num).toDouble(),
      score: json['score'] as int,
      favoriteCount: json['fav_count'] as int,
      uploaderId: json['uploader_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      meta: _tagsArrayFromJson(json['tag_string_meta'] as String),
      postVariants:
          _postVariantsFromJson(json['media_asset'] as Map<String, dynamic>),
      video: json['video'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag_string_general': instance.tags,
      'tag_string_artist': instance.artistTag,
      'tag_string_character': instance.characterTag,
      'tag_string_copyright': instance.seriesTag,
      'rating': _$PostRatingEnumMap[instance.rating]!,
      'source': instance.source,
      'file_ext': instance.fileExt,
      'image_width': instance.imageWidth,
      'image_height': instance.imageHeight,
      'file_size': instance.size,
      'score': instance.score,
      'fav_count': instance.favoriteCount,
      'uploader_id': instance.uploaderId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'tag_string_meta': instance.meta,
      'media_asset': instance.postVariants,
      'video': instance.video,
    };

const _$PostRatingEnumMap = {
  PostRating.general: 'general',
  PostRating.sensitive: 'sensitive',
  PostRating.questionable: 'questionable',
  PostRating.explicit: 'explicit',
  PostRating.all: 'all',
  PostRating.unknown: 'unknown',
};

_$PostVariantsImpl _$$PostVariantsImplFromJson(Map<String, dynamic> json) =>
    _$PostVariantsImpl(
      type: _postVariantTypeFromJson(json['type'] as String),
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      fileExt: json['file_ext'] as String,
    );

Map<String, dynamic> _$$PostVariantsImplToJson(_$PostVariantsImpl instance) =>
    <String, dynamic>{
      'type': _$PostVariantTypeEnumMap[instance.type]!,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'file_ext': instance.fileExt,
    };

const _$PostVariantTypeEnumMap = {
  PostVariantType.x180: 'x180',
  PostVariantType.x360: 'x360',
  PostVariantType.x720: 'x720',
  PostVariantType.original: 'original',
};
