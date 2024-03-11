// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queryparams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function(int page, String tags,
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
    TResult? Function(PostParams value)? post,
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
      _$QueryParamsCopyWithImpl<$Res, QueryParams>;
  @useResult
  $Res call(
      {int page, String tags, @JsonKey(ignore: true) QueryParamsPostType type});
}

/// @nodoc
class _$QueryParamsCopyWithImpl<$Res, $Val extends QueryParams>
    implements $QueryParamsCopyWith<$Res> {
  _$QueryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? tags = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryParamsPostType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostParamsImplCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory _$$PostParamsImplCopyWith(
          _$PostParamsImpl value, $Res Function(_$PostParamsImpl) then) =
      __$$PostParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, String tags, @JsonKey(ignore: true) QueryParamsPostType type});
}

/// @nodoc
class __$$PostParamsImplCopyWithImpl<$Res>
    extends _$QueryParamsCopyWithImpl<$Res, _$PostParamsImpl>
    implements _$$PostParamsImplCopyWith<$Res> {
  __$$PostParamsImplCopyWithImpl(
      _$PostParamsImpl _value, $Res Function(_$PostParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? tags = null,
    Object? type = null,
  }) {
    return _then(_$PostParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryParamsPostType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostParamsImpl implements PostParams {
  const _$PostParamsImpl(
      {this.page = 1,
      this.tags = '',
      @JsonKey(ignore: true) this.type = QueryParamsPostType.post});

  factory _$PostParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostParamsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, tags, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostParamsImplCopyWith<_$PostParamsImpl> get copyWith =>
      __$$PostParamsImplCopyWithImpl<_$PostParamsImpl>(this, _$identity);

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
    TResult? Function(int page, String tags,
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
    TResult? Function(PostParams value)? post,
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
    return _$$PostParamsImplToJson(
      this,
    );
  }
}

abstract class PostParams implements QueryParams {
  const factory PostParams(
          {final int page,
          final String tags,
          @JsonKey(ignore: true) final QueryParamsPostType type}) =
      _$PostParamsImpl;

  factory PostParams.fromJson(Map<String, dynamic> json) =
      _$PostParamsImpl.fromJson;

  @override
  int get page;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  QueryParamsPostType get type;
  @override
  @JsonKey(ignore: true)
  _$$PostParamsImplCopyWith<_$PostParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
