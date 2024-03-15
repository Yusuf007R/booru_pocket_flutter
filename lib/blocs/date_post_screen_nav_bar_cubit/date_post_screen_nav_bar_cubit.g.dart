// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_post_screen_nav_bar_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatePostScreenNavbarStateImpl _$$DatePostScreenNavbarStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DatePostScreenNavbarStateImpl(
      queryParams:
          QueryParams.fromJson(json['queryParams'] as Map<String, dynamic>),
      scale: $enumDecodeNullable(_$ScaleTypeEnumMap, json['scale']) ??
          ScaleType.day,
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$DatePostTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$DatePostScreenNavbarStateImplToJson(
        _$DatePostScreenNavbarStateImpl instance) =>
    <String, dynamic>{
      'queryParams': instance.queryParams,
      'scale': _$ScaleTypeEnumMap[instance.scale]!,
      'date': instance.date.toIso8601String(),
      'type': _$DatePostTypeEnumMap[instance.type]!,
    };

const _$ScaleTypeEnumMap = {
  ScaleType.day: 'day',
  ScaleType.week: 'week',
  ScaleType.month: 'month',
};

const _$DatePostTypeEnumMap = {
  DatePostType.popular: 'popular',
  DatePostType.curated: 'curated',
};
