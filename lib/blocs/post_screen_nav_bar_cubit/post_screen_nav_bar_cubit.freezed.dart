// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_screen_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostScreenNavBarState _$PostScreenNavBarStateFromJson(
    Map<String, dynamic> json) {
  return _PostScreenNavBarState.fromJson(json);
}

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
      _$PostScreenNavBarStateCopyWithImpl<$Res, PostScreenNavBarState>;
  @useResult
  $Res call({List<AutoComplete> autoCompletes, QueryParams queryParams});

  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class _$PostScreenNavBarStateCopyWithImpl<$Res,
        $Val extends PostScreenNavBarState>
    implements $PostScreenNavBarStateCopyWith<$Res> {
  _$PostScreenNavBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoCompletes = null,
    Object? queryParams = null,
  }) {
    return _then(_value.copyWith(
      autoCompletes: null == autoCompletes
          ? _value.autoCompletes
          : autoCompletes // ignore: cast_nullable_to_non_nullable
              as List<AutoComplete>,
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
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
abstract class _$$PostScreenNavBarStateImplCopyWith<$Res>
    implements $PostScreenNavBarStateCopyWith<$Res> {
  factory _$$PostScreenNavBarStateImplCopyWith(
          _$PostScreenNavBarStateImpl value,
          $Res Function(_$PostScreenNavBarStateImpl) then) =
      __$$PostScreenNavBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AutoComplete> autoCompletes, QueryParams queryParams});

  @override
  $QueryParamsCopyWith<$Res> get queryParams;
}

/// @nodoc
class __$$PostScreenNavBarStateImplCopyWithImpl<$Res>
    extends _$PostScreenNavBarStateCopyWithImpl<$Res,
        _$PostScreenNavBarStateImpl>
    implements _$$PostScreenNavBarStateImplCopyWith<$Res> {
  __$$PostScreenNavBarStateImplCopyWithImpl(_$PostScreenNavBarStateImpl _value,
      $Res Function(_$PostScreenNavBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoCompletes = null,
    Object? queryParams = null,
  }) {
    return _then(_$PostScreenNavBarStateImpl(
      autoCompletes: null == autoCompletes
          ? _value._autoCompletes
          : autoCompletes // ignore: cast_nullable_to_non_nullable
              as List<AutoComplete>,
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as QueryParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostScreenNavBarStateImpl implements _PostScreenNavBarState {
  _$PostScreenNavBarStateImpl(
      {final List<AutoComplete> autoCompletes = const [],
      this.queryParams = const QueryParams.post(page: 1, tags: '')})
      : _autoCompletes = autoCompletes;

  factory _$PostScreenNavBarStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostScreenNavBarStateImplFromJson(json);

  final List<AutoComplete> _autoCompletes;
  @override
  @JsonKey()
  List<AutoComplete> get autoCompletes {
    if (_autoCompletes is EqualUnmodifiableListView) return _autoCompletes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_autoCompletes);
  }

  @override
  @JsonKey()
  final QueryParams queryParams;

  @override
  String toString() {
    return 'PostScreenNavBarState(autoCompletes: $autoCompletes, queryParams: $queryParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostScreenNavBarStateImpl &&
            const DeepCollectionEquality()
                .equals(other._autoCompletes, _autoCompletes) &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_autoCompletes), queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostScreenNavBarStateImplCopyWith<_$PostScreenNavBarStateImpl>
      get copyWith => __$$PostScreenNavBarStateImplCopyWithImpl<
          _$PostScreenNavBarStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostScreenNavBarStateImplToJson(
      this,
    );
  }
}

abstract class _PostScreenNavBarState implements PostScreenNavBarState {
  factory _PostScreenNavBarState(
      {final List<AutoComplete> autoCompletes,
      final QueryParams queryParams}) = _$PostScreenNavBarStateImpl;

  factory _PostScreenNavBarState.fromJson(Map<String, dynamic> json) =
      _$PostScreenNavBarStateImpl.fromJson;

  @override
  List<AutoComplete> get autoCompletes;
  @override
  QueryParams get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$PostScreenNavBarStateImplCopyWith<_$PostScreenNavBarStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
