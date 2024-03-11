// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'danbooru_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$DanbooruAuthStateCopyWithImpl<$Res, DanbooruAuthState>;
  @useResult
  $Res call(
      {String errorMsg,
      String? usernameErrorMsg,
      String? apiKeyErrorMsg,
      Map<int, bool> favoritePostIds,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DanbooruAuthStateCopyWithImpl<$Res, $Val extends DanbooruAuthState>
    implements $DanbooruAuthStateCopyWith<$Res> {
  _$DanbooruAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
    Object? usernameErrorMsg = freezed,
    Object? apiKeyErrorMsg = freezed,
    Object? favoritePostIds = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      usernameErrorMsg: freezed == usernameErrorMsg
          ? _value.usernameErrorMsg
          : usernameErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKeyErrorMsg: freezed == apiKeyErrorMsg
          ? _value.apiKeyErrorMsg
          : apiKeyErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritePostIds: null == favoritePostIds
          ? _value.favoritePostIds
          : favoritePostIds // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DanbooruAuthStateImplCopyWith<$Res>
    implements $DanbooruAuthStateCopyWith<$Res> {
  factory _$$DanbooruAuthStateImplCopyWith(_$DanbooruAuthStateImpl value,
          $Res Function(_$DanbooruAuthStateImpl) then) =
      __$$DanbooruAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$DanbooruAuthStateImplCopyWithImpl<$Res>
    extends _$DanbooruAuthStateCopyWithImpl<$Res, _$DanbooruAuthStateImpl>
    implements _$$DanbooruAuthStateImplCopyWith<$Res> {
  __$$DanbooruAuthStateImplCopyWithImpl(_$DanbooruAuthStateImpl _value,
      $Res Function(_$DanbooruAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
    Object? usernameErrorMsg = freezed,
    Object? apiKeyErrorMsg = freezed,
    Object? favoritePostIds = null,
    Object? user = null,
  }) {
    return _then(_$DanbooruAuthStateImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      usernameErrorMsg: freezed == usernameErrorMsg
          ? _value.usernameErrorMsg
          : usernameErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKeyErrorMsg: freezed == apiKeyErrorMsg
          ? _value.apiKeyErrorMsg
          : apiKeyErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritePostIds: null == favoritePostIds
          ? _value._favoritePostIds
          : favoritePostIds // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$DanbooruAuthStateImpl implements _DanbooruAuthState {
  const _$DanbooruAuthStateImpl(
      {this.errorMsg = '',
      this.usernameErrorMsg,
      this.apiKeyErrorMsg,
      final Map<int, bool> favoritePostIds = const {},
      this.user = const User.authenticating()})
      : _favoritePostIds = favoritePostIds;

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final String? usernameErrorMsg;
  @override
  final String? apiKeyErrorMsg;
  final Map<int, bool> _favoritePostIds;
  @override
  @JsonKey()
  Map<int, bool> get favoritePostIds {
    if (_favoritePostIds is EqualUnmodifiableMapView) return _favoritePostIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_favoritePostIds);
  }

  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'DanbooruAuthState(errorMsg: $errorMsg, usernameErrorMsg: $usernameErrorMsg, apiKeyErrorMsg: $apiKeyErrorMsg, favoritePostIds: $favoritePostIds, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DanbooruAuthStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.usernameErrorMsg, usernameErrorMsg) ||
                other.usernameErrorMsg == usernameErrorMsg) &&
            (identical(other.apiKeyErrorMsg, apiKeyErrorMsg) ||
                other.apiKeyErrorMsg == apiKeyErrorMsg) &&
            const DeepCollectionEquality()
                .equals(other._favoritePostIds, _favoritePostIds) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMsg,
      usernameErrorMsg,
      apiKeyErrorMsg,
      const DeepCollectionEquality().hash(_favoritePostIds),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DanbooruAuthStateImplCopyWith<_$DanbooruAuthStateImpl> get copyWith =>
      __$$DanbooruAuthStateImplCopyWithImpl<_$DanbooruAuthStateImpl>(
          this, _$identity);
}

abstract class _DanbooruAuthState implements DanbooruAuthState {
  const factory _DanbooruAuthState(
      {final String errorMsg,
      final String? usernameErrorMsg,
      final String? apiKeyErrorMsg,
      final Map<int, bool> favoritePostIds,
      final User user}) = _$DanbooruAuthStateImpl;

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
  _$$DanbooruAuthStateImplCopyWith<_$DanbooruAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
