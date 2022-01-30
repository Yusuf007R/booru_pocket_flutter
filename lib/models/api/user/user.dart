import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User.noAuthenticated() = UserNoAuthenticated;

  const factory User.authenticated({
    required int id,
    required String name,
    @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
        required List<String> blackListedTags,
  }) = UserAuthenticated;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticated.fromJson(json);
}

List<String> _fromJson(String tags) {
  return tags.split('\n');
}
