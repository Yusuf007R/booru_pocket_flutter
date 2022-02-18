// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'noAuthenticated':
      return UserNoAuthenticated.fromJson(json);
    case 'authenticating':
      return UserAuthenticating.fromJson(json);
    case 'authenticated':
      return UserAuthenticated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  UserNoAuthenticated noAuthenticated() {
    return const UserNoAuthenticated();
  }

  UserAuthenticating authenticating() {
    return const UserAuthenticating();
  }

  UserAuthenticated authenticated(
      {required int id,
      required String name,
      required int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required List<String> blackListedTags,
      @JsonKey(name: 'favorite_count')
          required int favoriteCount,
      @JsonKey(name: 'tag_query_limit')
          required int tagLimit}) {
    return UserAuthenticated(
      id: id,
      name: name,
      level: level,
      blackListedTags: blackListedTags,
      favoriteCount: favoriteCount,
      tagLimit: tagLimit,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAuthenticated,
    required TResult Function() authenticating,
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

/// @nodoc
abstract class $UserNoAuthenticatedCopyWith<$Res> {
  factory $UserNoAuthenticatedCopyWith(
          UserNoAuthenticated value, $Res Function(UserNoAuthenticated) then) =
      _$UserNoAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNoAuthenticatedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserNoAuthenticatedCopyWith<$Res> {
  _$UserNoAuthenticatedCopyWithImpl(
      UserNoAuthenticated _value, $Res Function(UserNoAuthenticated) _then)
      : super(_value, (v) => _then(v as UserNoAuthenticated));

  @override
  UserNoAuthenticated get _value => super._value as UserNoAuthenticated;
}

/// @nodoc
@JsonSerializable()
class _$UserNoAuthenticated extends UserNoAuthenticated {
  const _$UserNoAuthenticated({String? $type})
      : $type = $type ?? 'noAuthenticated',
        super._();

  factory _$UserNoAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$$UserNoAuthenticatedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.noAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserNoAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAuthenticated,
    required TResult Function() authenticating,
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)
        authenticated,
  }) {
    return noAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
  }) {
    return noAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
    required TResult orElse(),
  }) {
    if (noAuthenticated != null) {
      return noAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserAuthenticated value) authenticated,
  }) {
    return noAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
  }) {
    return noAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (noAuthenticated != null) {
      return noAuthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNoAuthenticatedToJson(this);
  }
}

abstract class UserNoAuthenticated extends User {
  const factory UserNoAuthenticated() = _$UserNoAuthenticated;
  const UserNoAuthenticated._() : super._();

  factory UserNoAuthenticated.fromJson(Map<String, dynamic> json) =
      _$UserNoAuthenticated.fromJson;
}

/// @nodoc
abstract class $UserAuthenticatingCopyWith<$Res> {
  factory $UserAuthenticatingCopyWith(
          UserAuthenticating value, $Res Function(UserAuthenticating) then) =
      _$UserAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAuthenticatingCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserAuthenticatingCopyWith<$Res> {
  _$UserAuthenticatingCopyWithImpl(
      UserAuthenticating _value, $Res Function(UserAuthenticating) _then)
      : super(_value, (v) => _then(v as UserAuthenticating));

  @override
  UserAuthenticating get _value => super._value as UserAuthenticating;
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticating extends UserAuthenticating {
  const _$UserAuthenticating({String? $type})
      : $type = $type ?? 'authenticating',
        super._();

  factory _$UserAuthenticating.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticatingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserAuthenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAuthenticated,
    required TResult Function() authenticating,
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)
        authenticated,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserAuthenticated value) authenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticatingToJson(this);
  }
}

abstract class UserAuthenticating extends User {
  const factory UserAuthenticating() = _$UserAuthenticating;
  const UserAuthenticating._() : super._();

  factory UserAuthenticating.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticating.fromJson;
}

/// @nodoc
abstract class $UserAuthenticatedCopyWith<$Res> {
  factory $UserAuthenticatedCopyWith(
          UserAuthenticated value, $Res Function(UserAuthenticated) then) =
      _$UserAuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          List<String> blackListedTags,
      @JsonKey(name: 'favorite_count')
          int favoriteCount,
      @JsonKey(name: 'tag_query_limit')
          int tagLimit});
}

/// @nodoc
class _$UserAuthenticatedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserAuthenticatedCopyWith<$Res> {
  _$UserAuthenticatedCopyWithImpl(
      UserAuthenticated _value, $Res Function(UserAuthenticated) _then)
      : super(_value, (v) => _then(v as UserAuthenticated));

  @override
  UserAuthenticated get _value => super._value as UserAuthenticated;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? blackListedTags = freezed,
    Object? favoriteCount = freezed,
    Object? tagLimit = freezed,
  }) {
    return _then(UserAuthenticated(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      blackListedTags: blackListedTags == freezed
          ? _value.blackListedTags
          : blackListedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      tagLimit: tagLimit == freezed
          ? _value.tagLimit
          : tagLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticated extends UserAuthenticated {
  const _$UserAuthenticated(
      {required this.id,
      required this.name,
      required this.level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required this.blackListedTags,
      @JsonKey(name: 'favorite_count')
          required this.favoriteCount,
      @JsonKey(name: 'tag_query_limit')
          required this.tagLimit,
      String? $type})
      : $type = $type ?? 'authenticated',
        super._();

  factory _$UserAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticatedFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int level;
  @override
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  final List<String> blackListedTags;
  @override
  @JsonKey(name: 'favorite_count')
  final int favoriteCount;
  @override
  @JsonKey(name: 'tag_query_limit')
  final int tagLimit;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authenticated(id: $id, name: $name, level: $level, blackListedTags: $blackListedTags, favoriteCount: $favoriteCount, tagLimit: $tagLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAuthenticated &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.blackListedTags, blackListedTags) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality().equals(other.tagLimit, tagLimit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(blackListedTags),
      const DeepCollectionEquality().hash(favoriteCount),
      const DeepCollectionEquality().hash(tagLimit));

  @JsonKey(ignore: true)
  @override
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      _$UserAuthenticatedCopyWithImpl<UserAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAuthenticated,
    required TResult Function() authenticating,
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)
        authenticated,
  }) {
    return authenticated(
        id, name, level, blackListedTags, favoriteCount, tagLimit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
  }) {
    return authenticated?.call(
        id, name, level, blackListedTags, favoriteCount, tagLimit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function()? authenticating,
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags,
            @JsonKey(name: 'favorite_count')
                int favoriteCount,
            @JsonKey(name: 'tag_query_limit')
                int tagLimit)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(
          id, name, level, blackListedTags, favoriteCount, tagLimit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticatedToJson(this);
  }
}

abstract class UserAuthenticated extends User {
  const factory UserAuthenticated(
      {required int id,
      required String name,
      required int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required List<String> blackListedTags,
      @JsonKey(name: 'favorite_count')
          required int favoriteCount,
      @JsonKey(name: 'tag_query_limit')
          required int tagLimit}) = _$UserAuthenticated;
  const UserAuthenticated._() : super._();

  factory UserAuthenticated.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticated.fromJson;

  int get id;
  String get name;
  int get level;
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  List<String> get blackListedTags;
  @JsonKey(name: 'favorite_count')
  int get favoriteCount;
  @JsonKey(name: 'tag_query_limit')
  int get tagLimit;
  @JsonKey(ignore: true)
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
