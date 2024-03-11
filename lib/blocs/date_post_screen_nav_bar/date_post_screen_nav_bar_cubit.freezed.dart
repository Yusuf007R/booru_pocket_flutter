// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_post_screen_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatePostScreenNavbarState _$DatePostScreenNavbarStateFromJson(
    Map<String, dynamic> json) {
  return _DatePostScreenNavbarState.fromJson(json);
}

/// @nodoc
mixin _$DatePostScreenNavbarState {
  QueryParams get queryParams => throw _privateConstructorUsedError;
  ScaleType get scale => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DatePostType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatePostScreenNavbarStateCopyWith<DatePostScreenNavbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatePostScreenNavbarStateCopyWith<$Res> {
  factory $DatePostScreenNavbarStateCopyWith(DatePostScreenNavbarState value,
          $Res Function(DatePostScreenNavbarState) then) =
      _$DatePostScreenNavbarStateCopyWithImpl<$Res, DatePostScreenNavbarState>;
  @useResult
  $Res call(
      {QueryParams queryParams,
      ScaleType scale,
      DateTime date,
      DatePostType type});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$DatePostScreenNavbarStateCopyWithImpl<$Res,
        $Val extends DatePostScreenNavbarState>
    implements $DatePostScreenNavbarStateCopyWith<$Res> {
  _$DatePostScreenNavbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? scale = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DatePostType,
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
abstract class _$$DatePostScreenNavbarStateImplCopyWith<$Res>
    implements $DatePostScreenNavbarStateCopyWith<$Res> {
  factory _$$DatePostScreenNavbarStateImplCopyWith(
          _$DatePostScreenNavbarStateImpl value,
          $Res Function(_$DatePostScreenNavbarStateImpl) then) =
      __$$DatePostScreenNavbarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryParams queryParams,
      ScaleType scale,
      DateTime date,
      DatePostType type});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$$DatePostScreenNavbarStateImplCopyWithImpl<$Res>
    extends _$DatePostScreenNavbarStateCopyWithImpl<$Res,
        _$DatePostScreenNavbarStateImpl>
    implements _$$DatePostScreenNavbarStateImplCopyWith<$Res> {
  __$$DatePostScreenNavbarStateImplCopyWithImpl(
      _$DatePostScreenNavbarStateImpl _value,
      $Res Function(_$DatePostScreenNavbarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? scale = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_$DatePostScreenNavbarStateImpl(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DatePostType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatePostScreenNavbarStateImpl implements _DatePostScreenNavbarState {
  _$DatePostScreenNavbarStateImpl(
      {required this.queryParams,
      this.scale = ScaleType.day,
      required this.date,
      required this.type});

  factory _$DatePostScreenNavbarStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatePostScreenNavbarStateImplFromJson(json);

  @override
  final QueryParams queryParams;
  @override
  @JsonKey()
  final ScaleType scale;
  @override
  final DateTime date;
  @override
  final DatePostType type;

  @override
  String toString() {
    return 'DatePostScreenNavbarState(queryParams: $queryParams, scale: $scale, date: $date, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePostScreenNavbarStateImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queryParams, scale, date, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePostScreenNavbarStateImplCopyWith<_$DatePostScreenNavbarStateImpl>
      get copyWith => __$$DatePostScreenNavbarStateImplCopyWithImpl<
          _$DatePostScreenNavbarStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatePostScreenNavbarStateImplToJson(
      this,
    );
  }
}

abstract class _DatePostScreenNavbarState implements DatePostScreenNavbarState {
  factory _DatePostScreenNavbarState(
      {required final QueryParams queryParams,
      final ScaleType scale,
      required final DateTime date,
      required final DatePostType type}) = _$DatePostScreenNavbarStateImpl;

  factory _DatePostScreenNavbarState.fromJson(Map<String, dynamic> json) =
      _$DatePostScreenNavbarStateImpl.fromJson;

  @override
  QueryParams get queryParams;
  @override
  ScaleType get scale;
  @override
  DateTime get date;
  @override
  DatePostType get type;
  @override
  @JsonKey(ignore: true)
  _$$DatePostScreenNavbarStateImplCopyWith<_$DatePostScreenNavbarStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
