part of 'popular_screen_nav_bar_cubit.dart';

enum ScaleType { day, week, month }

@freezed
class PopularScreenNavBarState with _$PopularScreenNavBarState {
  factory PopularScreenNavBarState({
    required QueryParams queryParams,
  }) = _PopularScreenNavBarState;

  factory PopularScreenNavBarState.fromJson(Map<String, dynamic> json) =>
      _$PopularScreenNavBarStateFromJson(json);
}
