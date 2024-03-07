// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_post_screen_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$DatePostScreenNavbarStateCopyWithImpl<$Res>;
  $Res call(
      {QueryParams queryParams,
      ScaleType scale,
      DateTime date,
      DatePostType type});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$DatePostScreenNavbarStateCopyWithImpl<$Res>
    implements $DatePostScreenNavbarStateCopyWith<$Res> {
  _$DatePostScreenNavbarStateCopyWithImpl(this._value, this._then);

  final DatePostScreenNavbarState _value;
  // ignore: unused_field
  final $Res Function(DatePostScreenNavbarState) _then;

  @override
  $Res call({
    Object? queryParams = freezed,
    Object? scale = freezed,
    Object? date = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleType,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DatePostType,
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
abstract class _$$_DatePostScreenNavbarStateCopyWith<$Res>
    implements $DatePostScreenNavbarStateCopyWith<$Res> {
  factory _$$_DatePostScreenNavbarStateCopyWith(
          _$_DatePostScreenNavbarState value,
          $Res Function(_$_DatePostScreenNavbarState) then) =
      __$$_DatePostScreenNavbarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {QueryParams queryParams,
      ScaleType scale,
      DateTime date,
      DatePostType type});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$$_DatePostScreenNavbarStateCopyWithImpl<$Res>
    extends _$DatePostScreenNavbarStateCopyWithImpl<$Res>
    implements _$$_DatePostScreenNavbarStateCopyWith<$Res> {
  __$$_DatePostScreenNavbarStateCopyWithImpl(
      _$_DatePostScreenNavbarState _value,
      $Res Function(_$_DatePostScreenNavbarState) _then)
      : super(_value, (v) => _then(v as _$_DatePostScreenNavbarState));

  @override
  _$_DatePostScreenNavbarState get _value =>
      super._value as _$_DatePostScreenNavbarState;

  @override
  $Res call({
    Object? queryParams = freezed,
    Object? scale = freezed,
    Object? date = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_DatePostScreenNavbarState(
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleType,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DatePostType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DatePostScreenNavbarState implements _DatePostScreenNavbarState {
  _$_DatePostScreenNavbarState(
      {required this.queryParams,
      this.scale = ScaleType.day,
      required this.date,
      required this.type});

  factory _$_DatePostScreenNavbarState.fromJson(Map<String, dynamic> json) =>
      _$$_DatePostScreenNavbarStateFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatePostScreenNavbarState &&
            const DeepCollectionEquality()
                .equals(other.queryParams, queryParams) &&
            const DeepCollectionEquality().equals(other.scale, scale) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(queryParams),
      const DeepCollectionEquality().hash(scale),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_DatePostScreenNavbarStateCopyWith<_$_DatePostScreenNavbarState>
      get copyWith => __$$_DatePostScreenNavbarStateCopyWithImpl<
          _$_DatePostScreenNavbarState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatePostScreenNavbarStateToJson(
      this,
    );
  }
}

abstract class _DatePostScreenNavbarState implements DatePostScreenNavbarState {
  factory _DatePostScreenNavbarState(
      {required final QueryParams queryParams,
      final ScaleType scale,
      required final DateTime date,
      required final DatePostType type}) = _$_DatePostScreenNavbarState;

  factory _DatePostScreenNavbarState.fromJson(Map<String, dynamic> json) =
      _$_DatePostScreenNavbarState.fromJson;

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
  _$$_DatePostScreenNavbarStateCopyWith<_$_DatePostScreenNavbarState>
      get copyWith => throw _privateConstructorUsedError;
}
