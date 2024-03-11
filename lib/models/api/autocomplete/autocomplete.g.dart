// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoCompleteImpl _$$AutoCompleteImplFromJson(Map<String, dynamic> json) =>
    _$AutoCompleteImpl(
      label: json['label'] as String,
      value: json['value'] as String,
      postCount: json['post_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$AutoCompleteImplToJson(_$AutoCompleteImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'post_count': instance.postCount,
    };
