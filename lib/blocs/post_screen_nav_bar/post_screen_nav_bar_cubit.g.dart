// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_screen_nav_bar_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostScreenNavBarState _$$_PostScreenNavBarStateFromJson(
        Map<String, dynamic> json) =>
    _$_PostScreenNavBarState(
      autoCompletes: (json['autoCompletes'] as List<dynamic>?)
              ?.map((e) => AutoComplete.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      queryParams: json['queryParams'] == null
          ? const QueryParams.post(page: 1, tags: '')
          : QueryParams.fromJson(json['queryParams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostScreenNavBarStateToJson(
        _$_PostScreenNavBarState instance) =>
    <String, dynamic>{
      'autoCompletes': instance.autoCompletes,
      'queryParams': instance.queryParams,
    };
