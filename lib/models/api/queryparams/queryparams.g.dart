// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queryparams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostParams _$$PostParamsFromJson(Map<String, dynamic> json) => _$PostParams(
      page: json['page'] as int? ?? 1,
      tags: json['tags'] as String? ?? '',
    );

Map<String, dynamic> _$$PostParamsToJson(_$PostParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'tags': instance.tags,
    };
