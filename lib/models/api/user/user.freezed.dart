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

  UserAuthenticated authenticated(
      {required int id,
      required String name,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required List<String> blackListedTags}) {
    return UserAuthenticated(
      id: id,
      name: name,
      blackListedTags: blackListedTags,
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
    required TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)?
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
    required TResult Function(UserAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
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
    required TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)
        authenticated,
  }) {
    return noAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)?
        authenticated,
  }) {
    return noAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)?
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
    required TResult Function(UserAuthenticated value) authenticated,
  }) {
    return noAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticated value)? authenticated,
  }) {
    return noAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
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
abstract class $UserAuthenticatedCopyWith<$Res> {
  factory $UserAuthenticatedCopyWith(
          UserAuthenticated value, $Res Function(UserAuthenticated) then) =
      _$UserAuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          List<String> blackListedTags});
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
    Object? blackListedTags = freezed,
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
      blackListedTags: blackListedTags == freezed
          ? _value.blackListedTags
          : blackListedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticated extends UserAuthenticated {
  const _$UserAuthenticated(
      {required this.id,
      required this.name,
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required this.blackListedTags,
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
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  final List<String> blackListedTags;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authenticated(id: $id, name: $name, blackListedTags: $blackListedTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAuthenticated &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.blackListedTags, blackListedTags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(blackListedTags));

  @JsonKey(ignore: true)
  @override
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      _$UserAuthenticatedCopyWithImpl<UserAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAuthenticated,
    required TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)
        authenticated,
  }) {
    return authenticated(id, name, blackListedTags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)?
        authenticated,
  }) {
    return authenticated?.call(id, name, blackListedTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAuthenticated,
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
                List<String> blackListedTags)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(id, name, blackListedTags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNoAuthenticated value) noAuthenticated,
    required TResult Function(UserAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
    TResult Function(UserAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNoAuthenticated value)? noAuthenticated,
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
      @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
          required List<String> blackListedTags}) = _$UserAuthenticated;
  const UserAuthenticated._() : super._();

  factory UserAuthenticated.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticated.fromJson;

  int get id;
  String get name;
  @JsonKey(name: 'blacklisted_tags', fromJson: _fromJson)
  List<String> get blackListedTags;
  @JsonKey(ignore: true)
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
