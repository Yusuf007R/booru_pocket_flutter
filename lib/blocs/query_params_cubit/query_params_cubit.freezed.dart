// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_params_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$QueryParamsCubitStateCopyWithImpl<$Res, QueryParamsCubitState>;
  @useResult
  $Res call({QueryParams queryParams, String strictTag});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$QueryParamsCubitStateCopyWithImpl<$Res,
        $Val extends QueryParamsCubitState>
    implements $QueryParamsCubitStateCopyWith<$Res> {
  _$QueryParamsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? strictTag = null,
  }) {
    return _then(_value.copyWith(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      strictTag: null == strictTag
          ? _value.strictTag
          : strictTag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryParamsCopyWith<$Res> get queryParams {
    return $QueryParamsCopyWith<$Res>(_value.queryParams, (value) {
      return _then(_value.copyWith(queryParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueryParamsCubitStateImplCopyWith<$Res>
    implements $QueryParamsCubitStateCopyWith<$Res> {
  factory _$$QueryParamsCubitStateImplCopyWith(
          _$QueryParamsCubitStateImpl value,
          $Res Function(_$QueryParamsCubitStateImpl) then) =
      __$$QueryParamsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryParams queryParams, String strictTag});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$$QueryParamsCubitStateImplCopyWithImpl<$Res>
    extends _$QueryParamsCubitStateCopyWithImpl<$Res,
        _$QueryParamsCubitStateImpl>
    implements _$$QueryParamsCubitStateImplCopyWith<$Res> {
  __$$QueryParamsCubitStateImplCopyWithImpl(_$QueryParamsCubitStateImpl _value,
      $Res Function(_$QueryParamsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? strictTag = null,
  }) {
    return _then(_$QueryParamsCubitStateImpl(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      strictTag: null == strictTag
          ? _value.strictTag
          : strictTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryParamsCubitStateImpl implements _QueryParamsCubitState {
  const _$QueryParamsCubitStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryParamsCubitStateImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams) &&
            (identical(other.strictTag, strictTag) ||
                other.strictTag == strictTag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams, strictTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryParamsCubitStateImplCopyWith<_$QueryParamsCubitStateImpl>
      get copyWith => __$$QueryParamsCubitStateImplCopyWithImpl<
          _$QueryParamsCubitStateImpl>(this, _$identity);
}

abstract class _QueryParamsCubitState implements QueryParamsCubitState {
  const factory _QueryParamsCubitState(
      {required final QueryParams queryParams,
      final String strictTag}) = _$QueryParamsCubitStateImpl;

  @override
  QueryParams get queryParams;
  @override
  String get strictTag;
  @override
  @JsonKey(ignore: true)
  _$$QueryParamsCubitStateImplCopyWith<_$QueryParamsCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
