part of 'settings_cubit.dart';

enum ImageQuality { low, high, max }

enum GridType { square, waterFall }

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(null) String? defaultDownloadPath,
    @Default(true) bool gridRoundedCorners,
    @Default(PostRating.general) PostRating rating,
    @Default(ImageQuality.high) ImageQuality gridImageQuality,
    @Default(ImageQuality.max) ImageQuality downloadQuality,
    @Default(ImageQuality.high) ImageQuality detailPageQuality,
    @Default(GridType.waterFall) GridType gridType,
    @Default(2) int gridColumns,
    @Default(20) int pageLimit,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}
