// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'danbooru_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DanbooruAuthStateTearOff {
  const _$DanbooruAuthStateTearOff();

  _DanbooruAuthState call(
      {String errorMsg = '',
      String? usernameErrorMsg,
      String? apiKeyErrorMsg,
      Map<int, bool> favoritePostIds = const {},
      User user = const User.authenticating()}) {
    return _DanbooruAuthState(
      errorMsg: errorMsg,
      usernameErrorMsg: usernameErrorMsg,
      apiKeyErrorMsg: apiKeyErrorMsg,
      favoritePostIds: favoritePostIds,
      user: user,
    );
  }
}

/// @nodoc
const $DanbooruAuthState = _$DanbooruAuthStateTearOff();

/// @nodoc
mixin _$DanbooruAuthState {
  String get errorMsg => throw _privateConstructorUsedError;
  String? get usernameErrorMsg => throw _privateConstructorUsedError;
  String? get apiKeyErrorMsg => throw _privateConstructorUsedError;
  Map<int, bool> get favoritePostIds => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DanbooruAuthStateCopyWith<DanbooruAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DanbooruAuthStateCopyWith<$Res> {
  factory $DanbooruAuthStateCopyWith(
          DanbooruAuthState value, $Res Function(DanbooruAuthState) then) =
      _$DanbooruAuthStateCopyWithImpl<$Res>;
  $Res call(
      {String errorMsg,
      String? usernameErrorMsg,
      String? apiKeyErrorMsg,
      Map<int, bool> favoritePostIds,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DanbooruAuthStateCopyWithImpl<$Res>
    implements $DanbooruAuthStateCopyWith<$Res> {
  _$DanbooruAuthStateCopyWithImpl(this._value, this._then);

  final DanbooruAuthState _value;
  // ignore: unused_field
  final $Res Function(DanbooruAuthState) _then;

  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? usernameErrorMsg = freezed,
    Object? apiKeyErrorMsg = freezed,
    Object? favoritePostIds = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      usernameErrorMsg: usernameErrorMsg == freezed
          ? _value.usernameErrorMsg
          : usernameErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKeyErrorMsg: apiKeyErrorMsg == freezed
          ? _value.apiKeyErrorMsg
          : apiKeyErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritePostIds: favoritePostIds == freezed
          ? _value.favoritePostIds
          : favoritePostIds // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DanbooruAuthStateCopyWith<$Res>
    implements $DanbooruAuthStateCopyWith<$Res> {
  factory _$DanbooruAuthStateCopyWith(
          _DanbooruAuthState value, $Res Function(_DanbooruAuthState) then) =
      __$DanbooruAuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorMsg,
      String? usernameErrorMsg,
      String? apiKeyErrorMsg,
      Map<int, bool> favoritePostIds,
      User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$DanbooruAuthStateCopyWithImpl<$Res>
    extends _$DanbooruAuthStateCopyWithImpl<$Res>
    implements _$DanbooruAuthStateCopyWith<$Res> {
  __$DanbooruAuthStateCopyWithImpl(
      _DanbooruAuthState _value, $Res Function(_DanbooruAuthState) _then)
      : super(_value, (v) => _then(v as _DanbooruAuthState));

  @override
  _DanbooruAuthState get _value => super._value as _DanbooruAuthState;

  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? usernameErrorMsg = freezed,
    Object? apiKeyErrorMsg = freezed,
    Object? favoritePostIds = freezed,
    Object? user = freezed,
  }) {
    return _then(_DanbooruAuthState(
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      usernameErrorMsg: usernameErrorMsg == freezed
          ? _value.usernameErrorMsg
          : usernameErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKeyErrorMsg: apiKeyErrorMsg == freezed
          ? _value.apiKeyErrorMsg
          : apiKeyErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritePostIds: favoritePostIds == freezed
          ? _value.favoritePostIds
          : favoritePostIds // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_DanbooruAuthState implements _DanbooruAuthState {
  const _$_DanbooruAuthState(
      {this.errorMsg = '',
      this.usernameErrorMsg,
      this.apiKeyErrorMsg,
      this.favoritePostIds = const {},
      this.user = const User.authenticating()});

  @JsonKey()
  @override
  final String errorMsg;
  @override
  final String? usernameErrorMsg;
  @override
  final String? apiKeyErrorMsg;
  @JsonKey()
  @override
  final Map<int, bool> favoritePostIds;
  @JsonKey()
  @override
  final User user;

  @override
  String toString() {
    return 'DanbooruAuthState(errorMsg: $errorMsg, usernameErrorMsg: $usernameErrorMsg, apiKeyErrorMsg: $apiKeyErrorMsg, favoritePostIds: $favoritePostIds, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DanbooruAuthState &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            const DeepCollectionEquality()
                .equals(other.usernameErrorMsg, usernameErrorMsg) &&
            const DeepCollectionEquality()
                .equals(other.apiKeyErrorMsg, apiKeyErrorMsg) &&
            const DeepCollectionEquality()
                .equals(other.favoritePostIds, favoritePostIds) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMsg),
      const DeepCollectionEquality().hash(usernameErrorMsg),
      const DeepCollectionEquality().hash(apiKeyErrorMsg),
      const DeepCollectionEquality().hash(favoritePostIds),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$DanbooruAuthStateCopyWith<_DanbooruAuthState> get copyWith =>
      __$DanbooruAuthStateCopyWithImpl<_DanbooruAuthState>(this, _$identity);
}

abstract class _DanbooruAuthState implements DanbooruAuthState {
  const factory _DanbooruAuthState(
      {String errorMsg,
      String? usernameErrorMsg,
      String? apiKeyErrorMsg,
      Map<int, bool> favoritePostIds,
      User user}) = _$_DanbooruAuthState;

  @override
  String get errorMsg;
  @override
  String? get usernameErrorMsg;
  @override
  String? get apiKeyErrorMsg;
  @override
  Map<int, bool> get favoritePostIds;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$DanbooruAuthStateCopyWith<_DanbooruAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
