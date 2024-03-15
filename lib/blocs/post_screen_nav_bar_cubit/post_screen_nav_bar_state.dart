part of 'post_screen_nav_bar_cubit.dart';

@freezed
class PostScreenNavBarState with _$PostScreenNavBarState {
  factory PostScreenNavBarState({
    @Default([]) List<AutoComplete> autoCompletes,
    @Default(QueryParams.post(page: 1, tags: '')) QueryParams queryParams,
  }) = _PostScreenNavBarState;

  factory PostScreenNavBarState.fromJson(Map<String, dynamic> json) =>
      _$PostScreenNavBarStateFromJson(json);
}
