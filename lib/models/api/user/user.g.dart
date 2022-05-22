// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNoAuthenticated _$$UserNoAuthenticatedFromJson(
        Map<String, dynamic> json) =>
    _$UserNoAuthenticated(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserNoAuthenticatedToJson(
        _$UserNoAuthenticated instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserAuthenticating _$$UserAuthenticatingFromJson(Map<String, dynamic> json) =>
    _$UserAuthenticating(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticatingToJson(
        _$UserAuthenticating instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserAuthenticated _$$UserAuthenticatedFromJson(Map<String, dynamic> json) =>
    _$UserAuthenticated(
      id: json['id'] as int,
      name: json['name'] as String,
      level: json['level'] as int,
      blackListedTags: _fromJson(json['blacklisted_tags'] as String),
      favoriteCount: json['favorite_count'] as int,
      tagLimit: json['tag_query_limit'] as int? ?? 2,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticatedToJson(_$UserAuthenticated instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'blacklisted_tags': instance.blackListedTags,
      'favorite_count': instance.favoriteCount,
      'tag_query_limit': instance.tagLimit,
      'runtimeType': instance.$type,
    };
