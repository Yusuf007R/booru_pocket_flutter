// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queryparams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueryParams _$QueryParamsFromJson(Map<String, dynamic> json) {
  return PostParams.fromJson(json);
}

/// @nodoc
mixin _$QueryParams {
  int get page => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  QueryParamsPostType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String tags,
            @JsonKey(ignore: true) QueryParamsPostType type)
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, String tags,
            @JsonKey(ignore: true) QueryParamsPostType type)?
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String tags,
            @JsonKey(ignore: true) QueryParamsPostType type)?
        post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostParams value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostParams value)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryParamsCopyWith<QueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParamsCopyWith<$Res> {
  factory $QueryParamsCopyWith(
          QueryParams value, $Res Function(QueryParams) then) =
      _$QueryParamsCopyWithImpl<$Res>;
  $Res call(
      {int page, String tags, @JsonKey(ignore: true) QueryParamsPostType type});
}

/// @nodoc
class _$QueryParamsCopyWithImpl<$Res> implements $QueryParamsCopyWith<$Res> {
  _$QueryParamsCopyWithImpl(this._value, this._then);

  final QueryParams _value;
  // ignore: unused_field
  final $Res Function(QueryParams) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? tags = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryParamsPostType,
    ));
  }
}

/// @nodoc
abstract class _$$PostParamsCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory _$$PostParamsCopyWith(
          _$PostParams value, $Res Function(_$PostParams) then) =
      __$$PostParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page, String tags, @JsonKey(ignore: true) QueryParamsPostType type});
}

/// @nodoc
class __$$PostParamsCopyWithImpl<$Res> extends _$QueryParamsCopyWithImpl<$Res>
    implements _$$PostParamsCopyWith<$Res> {
  __$$PostParamsCopyWithImpl(
      _$PostParams _value, $Res Function(_$PostParams) _then)
      : super(_value, (v) => _then(v as _$PostParams));

  @override
  _$PostParams get _value => super._value as _$PostParams;

  @override
  $Res call({
    Object? page = freezed,
    Object? tags = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PostParams(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryParamsPostType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostParams implements PostParams {
  const _$PostParams(
      {this.page = 1,
      this.tags = '',
      @JsonKey(ignore: true) this.type = QueryParamsPostType.post});

  factory _$PostParams.fromJson(Map<String, dynamic> json) =>
      _$$PostParamsFromJson(json);

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String tags;
  @override
  @JsonKey(ignore: true)
  final QueryParamsPostType type;

  @override
  String toString() {
    return 'QueryParams.post(page: $page, tags: $tags, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostParams &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$PostParamsCopyWith<_$PostParams> get copyWith =>
      __$$PostParamsCopyWithImpl<_$PostParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String tags,
            @JsonKey(ignore: true) QueryParamsPostType type)
        post,
  }) {
    return post(page, tags, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, String tags,
            @JsonKey(ignore: true) QueryParamsPostType type)?
        post,
  }) {
    return post?.call(page, tags, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String tags,
            @JsonKey(ignore: true) QueryParamsPostType type)?
        post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(page, tags, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostParams value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostParams value)? post,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostParamsToJson(
      this,
    );
  }
}

abstract class PostParams implements QueryParams {
  const factory PostParams(
      {final int page,
      final String tags,
      @JsonKey(ignore: true) final QueryParamsPostType type}) = _$PostParams;

  factory PostParams.fromJson(Map<String, dynamic> json) =
      _$PostParams.fromJson;

  @override
  int get page;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  QueryParamsPostType get type;
  @override
  @JsonKey(ignore: true)
  _$$PostParamsCopyWith<_$PostParams> get copyWith =>
      throw _privateConstructorUsedError;
}
