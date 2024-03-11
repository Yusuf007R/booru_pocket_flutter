import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

List<String> _fromJson(String tags) {
  return tags.split('\n');
}

@freezed
class User with _$User {
  const factory User.authenticated({
    required int id,
    required String name,
    required int level,
    @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
    required List<String> blackListedTags,
    @JsonKey(name: 'favorite_count') required int favoriteCount,
    @JsonKey(name: 'tag_query_limit', defaultValue: 2) required int tagLimit,
  }) = UserAuthenticated;

  const factory User.authenticating() = UserAuthenticating;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticatedImplFromJson(json);

  const factory User.noAuthenticated() = UserNoAuthenticated;

  const User._();
}
