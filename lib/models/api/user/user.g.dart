// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthenticatedImpl _$$UserAuthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAuthenticatedImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      level: json['level'] as int,
      blackListedTags: _fromJson(json['blacklisted_tags'] as String),
      favoriteCount: json['favorite_count'] as int,
      tagLimit: json['tag_query_limit'] as int? ?? 2,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticatedImplToJson(
        _$UserAuthenticatedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'blacklisted_tags': instance.blackListedTags,
      'favorite_count': instance.favoriteCount,
      'tag_query_limit': instance.tagLimit,
      'runtimeType': instance.$type,
    };

_$UserAuthenticatingImpl _$$UserAuthenticatingImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAuthenticatingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticatingImplToJson(
        _$UserAuthenticatingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserNoAuthenticatedImpl _$$UserNoAuthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNoAuthenticatedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserNoAuthenticatedImplToJson(
        _$UserNoAuthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
