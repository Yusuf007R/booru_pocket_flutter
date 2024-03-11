// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return UserAuthenticated.fromJson(json);
    case 'authenticating':
      return UserAuthenticating.fromJson(json);
    case 'noAuthenticated':
      return UserNoAuthenticated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)
        authenticated,
    required TResult Function() authenticating,
    required TResult Function() noAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult? Function()? authenticating,
    TResult? Function()? noAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult Function()? authenticating,
    TResult Function()? noAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthenticated value) authenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticated value)? authenticated,
    TResult? Function(UserAuthenticating value)? authenticating,
    TResult? Function(UserNoAuthenticated value)? noAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthenticated value)? authenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserAuthenticatedImplCopyWith<$Res> {
  factory _$$UserAuthenticatedImplCopyWith(_$UserAuthenticatedImpl value,
          $Res Function(_$UserAuthenticatedImpl) then) =
      __$$UserAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String name,
      int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
      List<String> blackListedTags,
      @JsonKey(name: 'favorite_count') int favoriteCount,
      @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit});
}

/// @nodoc
class __$$UserAuthenticatedImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserAuthenticatedImpl>
    implements _$$UserAuthenticatedImplCopyWith<$Res> {
  __$$UserAuthenticatedImplCopyWithImpl(_$UserAuthenticatedImpl _value,
      $Res Function(_$UserAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? level = null,
    Object? blackListedTags = null,
    Object? favoriteCount = null,
    Object? tagLimit = null,
  }) {
    return _then(_$UserAuthenticatedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      blackListedTags: null == blackListedTags
          ? _value._blackListedTags
          : blackListedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      tagLimit: null == tagLimit
          ? _value.tagLimit
          : tagLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticatedImpl extends UserAuthenticated {
  const _$UserAuthenticatedImpl(
      {required this.id,
      required this.name,
      required this.level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
      required final List<String> blackListedTags,
      @JsonKey(name: 'favorite_count') required this.favoriteCount,
      @JsonKey(name: 'tag_query_limit', defaultValue: 2) required this.tagLimit,
      final String? $type})
      : _blackListedTags = blackListedTags,
        $type = $type ?? 'authenticated',
        super._();

  factory _$UserAuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticatedImplFromJson(json);

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
    if (_blackListedTags is EqualUnmodifiableListView) return _blackListedTags;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthenticatedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._blackListedTags, _blackListedTags) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.tagLimit, tagLimit) ||
                other.tagLimit == tagLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      level,
      const DeepCollectionEquality().hash(_blackListedTags),
      favoriteCount,
      tagLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthenticatedImplCopyWith<_$UserAuthenticatedImpl> get copyWith =>
      __$$UserAuthenticatedImplCopyWithImpl<_$UserAuthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)
        authenticated,
    required TResult Function() authenticating,
    required TResult Function() noAuthenticated,
  }) {
    return authenticated(
        id, name, level, blackListedTags, favoriteCount, tagLimit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult? Function()? authenticating,
    TResult? Function()? noAuthenticated,
  }) {
    return authenticated?.call(
        id, name, level, blackListedTags, favoriteCount, tagLimit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult Function()? authenticating,
    TResult Function()? noAuthenticated,
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
    required TResult Function(UserAuthenticated value) authenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticated value)? authenticated,
    TResult? Function(UserAuthenticating value)? authenticating,
    TResult? Function(UserNoAuthenticated value)? noAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthenticated value)? authenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticatedImplToJson(
      this,
    );
  }
}

abstract class UserAuthenticated extends User {
  const factory UserAuthenticated(
      {required final int id,
      required final String name,
      required final int level,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
      required final List<String> blackListedTags,
      @JsonKey(name: 'favorite_count') required final int favoriteCount,
      @JsonKey(name: 'tag_query_limit', defaultValue: 2)
      required final int tagLimit}) = _$UserAuthenticatedImpl;
  const UserAuthenticated._() : super._();

  factory UserAuthenticated.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticatedImpl.fromJson;

  int get id;
  String get name;
  int get level;
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  List<String> get blackListedTags;
  @JsonKey(name: 'favorite_count')
  int get favoriteCount;
  @JsonKey(name: 'tag_query_limit', defaultValue: 2)
  int get tagLimit;
  @JsonKey(ignore: true)
  _$$UserAuthenticatedImplCopyWith<_$UserAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAuthenticatingImplCopyWith<$Res> {
  factory _$$UserAuthenticatingImplCopyWith(_$UserAuthenticatingImpl value,
          $Res Function(_$UserAuthenticatingImpl) then) =
      __$$UserAuthenticatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthenticatingImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserAuthenticatingImpl>
    implements _$$UserAuthenticatingImplCopyWith<$Res> {
  __$$UserAuthenticatingImplCopyWithImpl(_$UserAuthenticatingImpl _value,
      $Res Function(_$UserAuthenticatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticatingImpl extends UserAuthenticating {
  const _$UserAuthenticatingImpl({final String? $type})
      : $type = $type ?? 'authenticating',
        super._();

  factory _$UserAuthenticatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticatingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authenticating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAuthenticatingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)
        authenticated,
    required TResult Function() authenticating,
    required TResult Function() noAuthenticated,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult? Function()? authenticating,
    TResult? Function()? noAuthenticated,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult Function()? authenticating,
    TResult Function()? noAuthenticated,
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
    required TResult Function(UserAuthenticated value) authenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticated value)? authenticated,
    TResult? Function(UserAuthenticating value)? authenticating,
    TResult? Function(UserNoAuthenticated value)? noAuthenticated,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthenticated value)? authenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticatingImplToJson(
      this,
    );
  }
}

abstract class UserAuthenticating extends User {
  const factory UserAuthenticating() = _$UserAuthenticatingImpl;
  const UserAuthenticating._() : super._();

  factory UserAuthenticating.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticatingImpl.fromJson;
}

/// @nodoc
abstract class _$$UserNoAuthenticatedImplCopyWith<$Res> {
  factory _$$UserNoAuthenticatedImplCopyWith(_$UserNoAuthenticatedImpl value,
          $Res Function(_$UserNoAuthenticatedImpl) then) =
      __$$UserNoAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNoAuthenticatedImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserNoAuthenticatedImpl>
    implements _$$UserNoAuthenticatedImplCopyWith<$Res> {
  __$$UserNoAuthenticatedImplCopyWithImpl(_$UserNoAuthenticatedImpl _value,
      $Res Function(_$UserNoAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserNoAuthenticatedImpl extends UserNoAuthenticated {
  const _$UserNoAuthenticatedImpl({final String? $type})
      : $type = $type ?? 'noAuthenticated',
        super._();

  factory _$UserNoAuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNoAuthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.noAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNoAuthenticatedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)
        authenticated,
    required TResult Function() authenticating,
    required TResult Function() noAuthenticated,
  }) {
    return noAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult? Function()? authenticating,
    TResult? Function()? noAuthenticated,
  }) {
    return noAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            int level,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
            List<String> blackListedTags,
            @JsonKey(name: 'favorite_count') int favoriteCount,
            @JsonKey(name: 'tag_query_limit', defaultValue: 2) int tagLimit)?
        authenticated,
    TResult Function()? authenticating,
    TResult Function()? noAuthenticated,
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
    required TResult Function(UserAuthenticated value) authenticated,
    required TResult Function(UserAuthenticating value) authenticating,
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
  }) {
    return noAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticated value)? authenticated,
    TResult? Function(UserAuthenticating value)? authenticating,
    TResult? Function(UserNoAuthenticated value)? noAuthenticated,
  }) {
    return noAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthenticated value)? authenticated,
    TResult Function(UserAuthenticating value)? authenticating,
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    required TResult orElse(),
  }) {
    if (noAuthenticated != null) {
      return noAuthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNoAuthenticatedImplToJson(
      this,
    );
  }
}

abstract class UserNoAuthenticated extends User {
  const factory UserNoAuthenticated() = _$UserNoAuthenticatedImpl;
  const UserNoAuthenticated._() : super._();

  factory UserNoAuthenticated.fromJson(Map<String, dynamic> json) =
      _$UserNoAuthenticatedImpl.fromJson;
}
