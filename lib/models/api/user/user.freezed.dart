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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
abstract class _$$UserNoAuthenticatedCopyWith<$Res> {
  factory _$$UserNoAuthenticatedCopyWith(_$UserNoAuthenticated value,
          $Res Function(_$UserNoAuthenticated) then) =
      __$$UserNoAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNoAuthenticatedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserNoAuthenticatedCopyWith<$Res> {
  __$$UserNoAuthenticatedCopyWithImpl(
      _$UserNoAuthenticated _value, $Res Function(_$UserNoAuthenticated) _then)
      : super(_value, (v) => _then(v as _$UserNoAuthenticated));

  @override
  _$UserNoAuthenticated get _value => super._value as _$UserNoAuthenticated;
}

/// @nodoc
@JsonSerializable()
class _$UserNoAuthenticated extends UserNoAuthenticated {
  const _$UserNoAuthenticated({final String? $type})
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
        (other.runtimeType == runtimeType && other is _$UserNoAuthenticated);
  }

  @JsonKey(ignore: true)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
abstract class _$$UserAuthenticatingCopyWith<$Res> {
  factory _$$UserAuthenticatingCopyWith(_$UserAuthenticating value,
          $Res Function(_$UserAuthenticating) then) =
      __$$UserAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthenticatingCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserAuthenticatingCopyWith<$Res> {
  __$$UserAuthenticatingCopyWithImpl(
      _$UserAuthenticating _value, $Res Function(_$UserAuthenticating) _then)
      : super(_value, (v) => _then(v as _$UserAuthenticating));

  @override
  _$UserAuthenticating get _value => super._value as _$UserAuthenticating;
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticating extends UserAuthenticating {
  const _$UserAuthenticating({final String? $type})
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
        (other.runtimeType == runtimeType && other is _$UserAuthenticating);
  }

  @JsonKey(ignore: true)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
abstract class _$$UserAuthenticatedCopyWith<$Res> {
  factory _$$UserAuthenticatedCopyWith(
          _$UserAuthenticated value, $Res Function(_$UserAuthenticated) then) =
      __$$UserAuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          List<String> blackListedTags,
      @JsonKey(name: 'favorite_count')
          int favoriteCount,
      @JsonKey(name: 'tag_query_limit', defaultValue: 2)
          int tagLimit});
}

/// @nodoc
class __$$UserAuthenticatedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserAuthenticatedCopyWith<$Res> {
  __$$UserAuthenticatedCopyWithImpl(
      _$UserAuthenticated _value, $Res Function(_$UserAuthenticated) _then)
      : super(_value, (v) => _then(v as _$UserAuthenticated));

  @override
  _$UserAuthenticated get _value => super._value as _$UserAuthenticated;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? blackListedTags = freezed,
    Object? favoriteCount = freezed,
    Object? tagLimit = freezed,
  }) {
    return _then(_$UserAuthenticated(
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
          ? _value._blackListedTags
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
          required final List<String> blackListedTags,
      @JsonKey(name: 'favorite_count')
          required this.favoriteCount,
      @JsonKey(name: 'tag_query_limit', defaultValue: 2)
          required this.tagLimit,
      final String? $type})
      : _blackListedTags = blackListedTags,
        $type = $type ?? 'authenticated',
        super._();

  factory _$UserAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticatedFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int level;
  final List<String> _blackListedTags;
  @override
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  List<String> get blackListedTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blackListedTags);
  }

  @override
  @JsonKey(name: 'favorite_count')
  final int favoriteCount;
  @override
  @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            other is _$UserAuthenticated &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other._blackListedTags, _blackListedTags) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality().equals(other.tagLimit, tagLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(_blackListedTags),
      const DeepCollectionEquality().hash(favoriteCount),
      const DeepCollectionEquality().hash(tagLimit));

  @JsonKey(ignore: true)
  @override
  _$$UserAuthenticatedCopyWith<_$UserAuthenticated> get copyWith =>
      __$$UserAuthenticatedCopyWithImpl<_$UserAuthenticated>(this, _$identity);

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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
            @JsonKey(name: 'tag_query_limit', defaultValue: 2)
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
      {required final int id,
      required final String name,
      required final int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required final List<String> blackListedTags,
      @JsonKey(name: 'favorite_count')
          required final int favoriteCount,
      @JsonKey(name: 'tag_query_limit', defaultValue: 2)
          required final int tagLimit}) = _$UserAuthenticated;
  const UserAuthenticated._() : super._();

  factory UserAuthenticated.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticated.fromJson;

  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  List<String> get blackListedTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_count')
  int get favoriteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_query_limit', defaultValue: 2)
  int get tagLimit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserAuthenticatedCopyWith<_$UserAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
