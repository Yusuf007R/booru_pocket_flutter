// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_screen_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularScreenNavBarState _$PopularScreenNavBarStateFromJson(
    Map<String, dynamic> json) {
  return _PopularScreenNavBarState.fromJson(json);
}

/// @nodoc
class _$PopularScreenNavBarStateTearOff {
  const _$PopularScreenNavBarStateTearOff();

  _PopularScreenNavBarState call({required QueryParams queryParams}) {
    return _PopularScreenNavBarState(
      queryParams: queryParams,
    );
  }

  PopularScreenNavBarState fromJson(Map<String, Object?> json) {
    return PopularScreenNavBarState.fromJson(json);
  }
}

/// @nodoc
const $PopularScreenNavBarState = _$PopularScreenNavBarStateTearOff();

/// @nodoc
mixin _$PopularScreenNavBarState {
  QueryParams get queryParams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularScreenNavBarStateCopyWith<PopularScreenNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularScreenNavBarStateCopyWith<$Res> {
  factory $PopularScreenNavBarStateCopyWith(PopularScreenNavBarState value,
          $Res Function(PopularScreenNavBarState) then) =
      _$PopularScreenNavBarStateCopyWithImpl<$Res>;
  $Res call({QueryParams queryParams});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$PopularScreenNavBarStateCopyWithImpl<$Res>
    implements $PopularScreenNavBarStateCopyWith<$Res> {
  _$PopularScreenNavBarStateCopyWithImpl(this._value, this._then);

  final PopularScreenNavBarState _value;
  // ignore: unused_field
  final $Res Function(PopularScreenNavBarState) _then;

  @override
  $Res call({
    Object? queryParams = freezed,
  }) {
    return _then(_value.copyWith(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }

  @override
  $QueryParamsCopyWith<$Res> get queryParams {
    return $QueryParamsCopyWith<$Res>(_value.queryParams, (value) {
      return _then(_value.copyWith(queryParams: value));
    });
  }
}

/// @nodoc
abstract class _$PopularScreenNavBarStateCopyWith<$Res>
    implements $PopularScreenNavBarStateCopyWith<$Res> {
  factory _$PopularScreenNavBarStateCopyWith(_PopularScreenNavBarState value,
          $Res Function(_PopularScreenNavBarState) then) =
      __$PopularScreenNavBarStateCopyWithImpl<$Res>;
  @override
  $Res call({QueryParams queryParams});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$PopularScreenNavBarStateCopyWithImpl<$Res>
    extends _$PopularScreenNavBarStateCopyWithImpl<$Res>
    implements _$PopularScreenNavBarStateCopyWith<$Res> {
  __$PopularScreenNavBarStateCopyWithImpl(_PopularScreenNavBarState _value,
      $Res Function(_PopularScreenNavBarState) _then)
      : super(_value, (v) => _then(v as _PopularScreenNavBarState));

  @override
  _PopularScreenNavBarState get _value =>
      super._value as _PopularScreenNavBarState;

  @override
  $Res call({
    Object? queryParams = freezed,
  }) {
    return _then(_PopularScreenNavBarState(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PopularScreenNavBarState implements _PopularScreenNavBarState {
  _$_PopularScreenNavBarState({required this.queryParams});

  factory _$_PopularScreenNavBarState.fromJson(Map<String, dynamic> json) =>
      _$$_PopularScreenNavBarStateFromJson(json);

  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'PopularScreenNavBarState(queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PopularScreenNavBarState &&
            const DeepCollectionEquality()
                .equals(other.queryParams, queryParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(queryParams));

  @JsonKey(ignore: true)
  @override
  _$PopularScreenNavBarStateCopyWith<_PopularScreenNavBarState> get copyWith =>
      __$PopularScreenNavBarStateCopyWithImpl<_PopularScreenNavBarState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularScreenNavBarStateToJson(this);
  }
}

abstract class _PopularScreenNavBarState implements PopularScreenNavBarState {
  factory _PopularScreenNavBarState({required QueryParams queryParams}) =
      _$_PopularScreenNavBarState;

  factory _PopularScreenNavBarState.fromJson(Map<String, dynamic> json) =
      _$_PopularScreenNavBarState.fromJson;

  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$PopularScreenNavBarStateCopyWith<_PopularScreenNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
