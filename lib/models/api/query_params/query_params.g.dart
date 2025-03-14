// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostParamsImpl _$$PostParamsImplFromJson(Map<String, dynamic> json) =>
    _$PostParamsImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      tags: json['tags'] as String? ?? '',
    );

Map<String, dynamic> _$$PostParamsImplToJson(_$PostParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'tags': instance.tags,
    };
