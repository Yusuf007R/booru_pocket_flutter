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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryParamsCubitState {
  QueryParams get queryParams => throw _privateConstructorUsedError;
  String get strictTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryParamsCubitStateCopyWith<QueryParamsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParamsCubitStateCopyWith<$Res> {
  factory $QueryParamsCubitStateCopyWith(QueryParamsCubitState value,
          $Res Function(QueryParamsCubitState) then) =
      _$QueryParamsCubitStateCopyWithImpl<$Res>;
  $Res call({QueryParams queryParams, String strictTag});

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
    Object? strictTag = freezed,
  }) {
    return _then(_value.copyWith(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      strictTag: strictTag == freezed
          ? _value.strictTag
          : strictTag // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_QueryParamsCubitStateCopyWith<$Res>
    implements $QueryParamsCubitStateCopyWith<$Res> {
  factory _$$_QueryParamsCubitStateCopyWith(_$_QueryParamsCubitState value,
          $Res Function(_$_QueryParamsCubitState) then) =
      __$$_QueryParamsCubitStateCopyWithImpl<$Res>;
  @override
  $Res call({QueryParams queryParams, String strictTag});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$$_QueryParamsCubitStateCopyWithImpl<$Res>
    extends _$QueryParamsCubitStateCopyWithImpl<$Res>
    implements _$$_QueryParamsCubitStateCopyWith<$Res> {
  __$$_QueryParamsCubitStateCopyWithImpl(_$_QueryParamsCubitState _value,
      $Res Function(_$_QueryParamsCubitState) _then)
      : super(_value, (v) => _then(v as _$_QueryParamsCubitState));

  @override
  _$_QueryParamsCubitState get _value =>
      super._value as _$_QueryParamsCubitState;

  @override
  $Res call({
    Object? queryParams = freezed,
    Object? strictTag = freezed,
  }) {
    return _then(_$_QueryParamsCubitState(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      strictTag: strictTag == freezed
          ? _value.strictTag
          : strictTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryParamsCubitState implements _QueryParamsCubitState {
  const _$_QueryParamsCubitState(
      {required this.queryParams, this.strictTag = ""});

  @override
  final QueryParams queryParams;
  @override
  @JsonKey()
  final String strictTag;

  @override
  String toString() {
    return 'QueryParamsCubitState(queryParams: $queryParams, strictTag: $strictTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryParamsCubitState &&
            const DeepCollectionEquality()
                .equals(other.queryParams, queryParams) &&
            const DeepCollectionEquality().equals(other.strictTag, strictTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(queryParams),
      const DeepCollectionEquality().hash(strictTag));

  @JsonKey(ignore: true)
  @override
  _$$_QueryParamsCubitStateCopyWith<_$_QueryParamsCubitState> get copyWith =>
      __$$_QueryParamsCubitStateCopyWithImpl<_$_QueryParamsCubitState>(
          this, _$identity);
}

abstract class _QueryParamsCubitState implements QueryParamsCubitState {
  const factory _QueryParamsCubitState(
      {required final QueryParams queryParams,
      final String strictTag}) = _$_QueryParamsCubitState;

  @override
  QueryParams get queryParams;
  @override
  String get strictTag;
  @override
  @JsonKey(ignore: true)
  _$$_QueryParamsCubitStateCopyWith<_$_QueryParamsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
