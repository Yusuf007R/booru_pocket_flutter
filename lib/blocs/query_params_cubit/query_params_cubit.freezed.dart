// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'query_params_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryParamsCubitStateTearOff {
  const _$QueryParamsCubitStateTearOff();

  _QueryParamsCubitState call({required QueryParams queryParams}) {
    return _QueryParamsCubitState(
      queryParams: queryParams,
    );
  }
}

/// @nodoc
const $QueryParamsCubitState = _$QueryParamsCubitStateTearOff();

/// @nodoc
mixin _$QueryParamsCubitState {
  QueryParams get queryParams => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryParamsCubitStateCopyWith<QueryParamsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParamsCubitStateCopyWith<$Res> {
  factory $QueryParamsCubitStateCopyWith(QueryParamsCubitState value,
          $Res Function(QueryParamsCubitState) then) =
      _$QueryParamsCubitStateCopyWithImpl<$Res>;
  $Res call({QueryParams queryParams});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$QueryParamsCubitStateCopyWithImpl<$Res>
    implements $QueryParamsCubitStateCopyWith<$Res> {
  _$QueryParamsCubitStateCopyWithImpl(this._value, this._then);

  final QueryParamsCubitState _value;
  // ignore: unused_field
  final $Res Function(QueryParamsCubitState) _then;

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
abstract class _$QueryParamsCubitStateCopyWith<$Res>
    implements $QueryParamsCubitStateCopyWith<$Res> {
  factory _$QueryParamsCubitStateCopyWith(_QueryParamsCubitState value,
          $Res Function(_QueryParamsCubitState) then) =
      __$QueryParamsCubitStateCopyWithImpl<$Res>;
  @override
  $Res call({QueryParams queryParams});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$QueryParamsCubitStateCopyWithImpl<$Res>
    extends _$QueryParamsCubitStateCopyWithImpl<$Res>
    implements _$QueryParamsCubitStateCopyWith<$Res> {
  __$QueryParamsCubitStateCopyWithImpl(_QueryParamsCubitState _value,
      $Res Function(_QueryParamsCubitState) _then)
      : super(_value, (v) => _then(v as _QueryParamsCubitState));

  @override
  _QueryParamsCubitState get _value => super._value as _QueryParamsCubitState;

  @override
  $Res call({
    Object? queryParams = freezed,
  }) {
    return _then(_QueryParamsCubitState(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc

class _$_QueryParamsCubitState implements _QueryParamsCubitState {
  const _$_QueryParamsCubitState({required this.queryParams});

  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'QueryParamsCubitState(queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueryParamsCubitState &&
            const DeepCollectionEquality()
                .equals(other.queryParams, queryParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(queryParams));

  @JsonKey(ignore: true)
  @override
  _$QueryParamsCubitStateCopyWith<_QueryParamsCubitState> get copyWith =>
      __$QueryParamsCubitStateCopyWithImpl<_QueryParamsCubitState>(
          this, _$identity);
}

abstract class _QueryParamsCubitState implements QueryParamsCubitState {
  const factory _QueryParamsCubitState({required QueryParams queryParams}) =
      _$_QueryParamsCubitState;

  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$QueryParamsCubitStateCopyWith<_QueryParamsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
