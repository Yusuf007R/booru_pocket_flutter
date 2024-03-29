// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsStateImpl _$$SettingsStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingsStateImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      defaultDownloadPath: json['defaultDownloadPath'] as String? ?? null,
      gridRoundedCorners: json['gridRoundedCorners'] as bool? ?? true,
      rating: $enumDecodeNullable(_$PostRatingEnumMap, json['rating']) ??
          PostRating.general,
      gridImageQuality: $enumDecodeNullable(
              _$ImageQualityEnumMap, json['gridImageQuality']) ??
          ImageQuality.high,
      downloadQuality:
          $enumDecodeNullable(_$ImageQualityEnumMap, json['downloadQuality']) ??
              ImageQuality.max,
      detailPageQuality: $enumDecodeNullable(
              _$ImageQualityEnumMap, json['detailPageQuality']) ??
          ImageQuality.high,
      gridType: $enumDecodeNullable(_$GridTypeEnumMap, json['gridType']) ??
          GridType.waterFall,
      gridColumns: json['gridColumns'] as int? ?? 2,
      pageLimit: json['pageLimit'] as int? ?? 20,
    );

Map<String, dynamic> _$$SettingsStateImplToJson(_$SettingsStateImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'defaultDownloadPath': instance.defaultDownloadPath,
      'gridRoundedCorners': instance.gridRoundedCorners,
      'rating': _$PostRatingEnumMap[instance.rating]!,
      'gridImageQuality': _$ImageQualityEnumMap[instance.gridImageQuality]!,
      'downloadQuality': _$ImageQualityEnumMap[instance.downloadQuality]!,
      'detailPageQuality': _$ImageQualityEnumMap[instance.detailPageQuality]!,
      'gridType': _$GridTypeEnumMap[instance.gridType]!,
      'gridColumns': instance.gridColumns,
      'pageLimit': instance.pageLimit,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$PostRatingEnumMap = {
  PostRating.general: 'general',
  PostRating.sensitive: 'sensitive',
  PostRating.questionable: 'questionable',
  PostRating.explicit: 'explicit',
  PostRating.all: 'all',
  PostRating.unknown: 'unknown',
};

const _$ImageQualityEnumMap = {
  ImageQuality.low: 'low',
  ImageQuality.high: 'high',
  ImageQuality.max: 'max',
};

const _$GridTypeEnumMap = {
  GridType.square: 'square',
  GridType.waterFall: 'waterFall',
};
