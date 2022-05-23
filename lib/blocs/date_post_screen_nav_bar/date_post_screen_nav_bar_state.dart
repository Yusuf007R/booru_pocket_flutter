part of 'date_post_screen_nav_bar_cubit.dart';

enum ScaleType { day, week, month }

enum DatePostType { popular, curated }

@freezed
class DatePostScreenNavbarState with _$DatePostScreenNavbarState {
  factory DatePostScreenNavbarState({
    required QueryParams queryParams,
    @Default(ScaleType.day) ScaleType scale,
    required DateTime date,
    required DatePostType type,
  }) = _DatePostScreenNavbarState;

  factory DatePostScreenNavbarState.fromJson(Map<String, dynamic> json) =>
      _$DatePostScreenNavbarStateFromJson(json);
}
