part of 'danbooru_auth_cubit.dart';

@freezed
class DanbooruAuthState with _$DanbooruAuthState {
  const factory DanbooruAuthState({
    @Default('') String errorMsg,
    String? usernameErrorMsg,
    String? apiKeyErrorMsg,
    @Default([]) List<int> favoritePostIds,
    @Default(User.authenticating()) User user,
  }) = _DanbooruAuthState;
}
