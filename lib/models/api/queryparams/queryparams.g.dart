// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queryparams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostParams _$$PostParamsFromJson(Map<String, dynamic> json) => _$PostParams(
      page: json['page'] as int? ?? 1,
      limit: json['limit'] as int? ?? 50,
      tags: json['tags'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostParamsToJson(_$PostParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'tags': instance.tags,
      'runtimeType': instance.$type,
    };

_$PopularParams _$$PopularParamsFromJson(Map<String, dynamic> json) =>
    _$PopularParams(
      page: json['page'] as int? ?? 1,
      limit: json['limit'] as int? ?? 50,
      date: DateTime.parse(json['date'] as String),
      scale: $enumDecodeNullable(_$ScaleTypeEnumMap, json['scale']) ??
          ScaleType.day,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PopularParamsToJson(_$PopularParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'date': instance.date.toIso8601String(),
      'scale': _$ScaleTypeEnumMap[instance.scale],
      'runtimeType': instance.$type,
    };

const _$ScaleTypeEnumMap = {
  ScaleType.day: 'day',
  ScaleType.week: 'week',
  ScaleType.month: 'month',
};

_$RecommendedParams _$$RecommendedParamsFromJson(Map<String, dynamic> json) =>
    _$RecommendedParams(
      page: json['page'] as int? ?? 1,
      limit: json['limit'] as int? ?? 50,
      user: json['search[user_name]'] as String,
      tags: json['search[post_tags_match]'] as String,
      postId: json['search[post_id]'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RecommendedParamsToJson(_$RecommendedParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'search[user_name]': instance.user,
      'search[post_tags_match]': instance.tags,
      'search[post_id]': instance.postId,
      'runtimeType': instance.$type,
    };
