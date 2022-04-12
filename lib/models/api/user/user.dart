import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User.noAuthenticated() = UserNoAuthenticated;

  const factory User.authenticating() = UserAuthenticating;

  const factory User.authenticated({
    required int id,
    required String name,
    required int level,
    @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
        required List<String> blackListedTags,
    @JsonKey(name: 'favorite_count') required int favoriteCount,
    @JsonKey(name: 'tag_query_limit', defaultValue: 2) required int tagLimit,
  }) = UserAuthenticated;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticated.fromJson(json);
}

List<String> _fromJson(String tags) {
  return tags.split('\n');
}
