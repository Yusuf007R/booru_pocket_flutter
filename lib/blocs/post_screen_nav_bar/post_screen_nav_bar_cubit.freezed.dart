// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_screen_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostScreenNavBarState _$PostScreenNavBarStateFromJson(
    Map<String, dynamic> json) {
  return _PostScreenNavBarState.fromJson(json);
}

/// @nodoc
class _$PostScreenNavBarStateTearOff {
  const _$PostScreenNavBarStateTearOff();

  _PostScreenNavBarState call(
      {List<AutoComplete> autoCompletes = const [],
      QueryParams queryParams =
          const QueryParams.post(page: 1, limit: 50, tags: '')}) {
    return _PostScreenNavBarState(
      autoCompletes: autoCompletes,
      queryParams: queryParams,
    );
  }

  PostScreenNavBarState fromJson(Map<String, Object?> json) {
    return PostScreenNavBarState.fromJson(json);
  }
}

/// @nodoc
const $PostScreenNavBarState = _$PostScreenNavBarStateTearOff();

/// @nodoc
mixin _$PostScreenNavBarState {
  List<AutoComplete> get autoCompletes => throw _privateConstructorUsedError;
  QueryParams get queryParams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostScreenNavBarStateCopyWith<PostScreenNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostScreenNavBarStateCopyWith<$Res> {
  factory $PostScreenNavBarStateCopyWith(PostScreenNavBarState value,
          $Res Function(PostScreenNavBarState) then) =
      _$PostScreenNavBarStateCopyWithImpl<$Res>;
  $Res call({List<AutoComplete> autoCompletes, QueryParams queryParams});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$PostScreenNavBarStateCopyWithImpl<$Res>
    implements $PostScreenNavBarStateCopyWith<$Res> {
  _$PostScreenNavBarStateCopyWithImpl(this._value, this._then);

  final PostScreenNavBarState _value;
  // ignore: unused_field
  final $Res Function(PostScreenNavBarState) _then;

  @override
  $Res call({
    Object? autoCompletes = freezed,
    Object? queryParams = freezed,
  }) {
    return _then(_value.copyWith(
      autoCompletes: autoCompletes == freezed
          ? _value.autoCompletes
          : autoCompletes // ignore: cast_nullable_to_non_nullable
              as List<AutoComplete>,
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
abstract class _$PostScreenNavBarStateCopyWith<$Res>
    implements $PostScreenNavBarStateCopyWith<$Res> {
  factory _$PostScreenNavBarStateCopyWith(_PostScreenNavBarState value,
          $Res Function(_PostScreenNavBarState) then) =
      __$PostScreenNavBarStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AutoComplete> autoCompletes, QueryParams queryParams});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$PostScreenNavBarStateCopyWithImpl<$Res>
    extends _$PostScreenNavBarStateCopyWithImpl<$Res>
    implements _$PostScreenNavBarStateCopyWith<$Res> {
  __$PostScreenNavBarStateCopyWithImpl(_PostScreenNavBarState _value,
      $Res Function(_PostScreenNavBarState) _then)
      : super(_value, (v) => _then(v as _PostScreenNavBarState));

  @override
  _PostScreenNavBarState get _value => super._value as _PostScreenNavBarState;

  @override
  $Res call({
    Object? autoCompletes = freezed,
    Object? queryParams = freezed,
  }) {
    return _then(_PostScreenNavBarState(
      autoCompletes: autoCompletes == freezed
          ? _value.autoCompletes
          : autoCompletes // ignore: cast_nullable_to_non_nullable
              as List<AutoComplete>,
      queryParams: queryParams == freezed
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostScreenNavBarState implements _PostScreenNavBarState {
  _$_PostScreenNavBarState(
      {this.autoCompletes = const [],
      this.queryParams = const QueryParams.post(page: 1, limit: 50, tags: '')});

  factory _$_PostScreenNavBarState.fromJson(Map<String, dynamic> json) =>
      _$$_PostScreenNavBarStateFromJson(json);

  @JsonKey()
  @override
  final List<AutoComplete> autoCompletes;
  @JsonKey()
  @override
  final QueryParams queryParams;

  @override
  String toString() {
    return 'PostScreenNavBarState(autoCompletes: $autoCompletes, queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostScreenNavBarState &&
            const DeepCollectionEquality()
                .equals(other.autoCompletes, autoCompletes) &&
            const DeepCollectionEquality()
                .equals(other.queryParams, queryParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(autoCompletes),
      const DeepCollectionEquality().hash(queryParams));

  @JsonKey(ignore: true)
  @override
  _$PostScreenNavBarStateCopyWith<_PostScreenNavBarState> get copyWith =>
      __$PostScreenNavBarStateCopyWithImpl<_PostScreenNavBarState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostScreenNavBarStateToJson(this);
  }
}

abstract class _PostScreenNavBarState implements PostScreenNavBarState {
  factory _PostScreenNavBarState(
      {List<AutoComplete> autoCompletes,
      QueryParams queryParams}) = _$_PostScreenNavBarState;

  factory _PostScreenNavBarState.fromJson(Map<String, dynamic> json) =
      _$_PostScreenNavBarState.fromJson;

  @override
  List<AutoComplete> get autoCompletes;
  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$PostScreenNavBarStateCopyWith<_PostScreenNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
