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

_$UserAuthenticated _$$UserAuthenticatedFromJson(Map<String, dynamic> json) =>
    _$UserAuthenticated(
      id: json['id'] as int,
      name: json['name'] as String,
      blackListedTags: _fromJson(json['blacklisted_tags'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticatedToJson(_$UserAuthenticated instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'blacklisted_tags': instance.blackListedTags,
      'runtimeType': instance.$type,
    };
