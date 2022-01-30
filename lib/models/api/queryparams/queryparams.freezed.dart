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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueryParams _$QueryParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'post':
      return PostParams.fromJson(json);
    case 'popular':
      return PopularParams.fromJson(json);
    case 'recommended':
      return RecommendedParams.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'QueryParams',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$QueryParamsTearOff {
  const _$QueryParamsTearOff();

  PostParams post({int page = 1, int limit = 500, String tags = ''}) {
    return PostParams(
      page: page,
      limit: limit,
      tags: tags,
    );
  }

  PopularParams popular(
      {int page = 1,
      int limit = 50,
      required DateTime date,
      ScaleType scale = ScaleType.day}) {
    return PopularParams(
      page: page,
      limit: limit,
      date: date,
      scale: scale,
    );
  }

  RecommendedParams recommended(
      {int page = 1,
      int limit = 50,
      @JsonKey(name: 'search[user_name]') required String user,
      @JsonKey(name: 'search[post_tags_match]') required String tags,
      @JsonKey(name: 'search[post_id]') required int postId}) {
    return RecommendedParams(
      page: page,
      limit: limit,
      user: user,
      tags: tags,
      postId: postId,
    );
  }

  QueryParams fromJson(Map<String, Object?> json) {
    return QueryParams.fromJson(json);
  }
}

/// @nodoc
const $QueryParams = _$QueryParamsTearOff();

/// @nodoc
mixin _$QueryParams {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, String tags) post,
    required TResult Function(
            int page, int limit, DateTime date, ScaleType scale)
        popular,
    required TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)
        recommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostParams value) post,
    required TResult Function(PopularParams value) popular,
    required TResult Function(RecommendedParams value) recommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
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
  $Res call({int page, int limit});
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
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $PostParamsCopyWith<$Res> implements $QueryParamsCopyWith<$Res> {
  factory $PostParamsCopyWith(
          PostParams value, $Res Function(PostParams) then) =
      _$PostParamsCopyWithImpl<$Res>;
  @override
  $Res call({int page, int limit, String tags});
}

/// @nodoc
class _$PostParamsCopyWithImpl<$Res> extends _$QueryParamsCopyWithImpl<$Res>
    implements $PostParamsCopyWith<$Res> {
  _$PostParamsCopyWithImpl(PostParams _value, $Res Function(PostParams) _then)
      : super(_value, (v) => _then(v as PostParams));

  @override
  PostParams get _value => super._value as PostParams;

  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? tags = freezed,
  }) {
    return _then(PostParams(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostParams implements PostParams {
  const _$PostParams(
      {this.page = 1, this.limit = 500, this.tags = '', String? $type})
      : $type = $type ?? 'post';

  factory _$PostParams.fromJson(Map<String, dynamic> json) =>
      _$$PostParamsFromJson(json);

  @JsonKey()
  @override
  final int page;
  @JsonKey()
  @override
  final int limit;
  @JsonKey()
  @override
  final String tags;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QueryParams.post(page: $page, limit: $limit, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostParams &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  $PostParamsCopyWith<PostParams> get copyWith =>
      _$PostParamsCopyWithImpl<PostParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, String tags) post,
    required TResult Function(
            int page, int limit, DateTime date, ScaleType scale)
        popular,
    required TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)
        recommended,
  }) {
    return post(page, limit, tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
  }) {
    return post?.call(page, limit, tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(page, limit, tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostParams value) post,
    required TResult Function(PopularParams value) popular,
    required TResult Function(RecommendedParams value) recommended,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostParamsToJson(this);
  }
}

abstract class PostParams implements QueryParams {
  const factory PostParams({int page, int limit, String tags}) = _$PostParams;

  factory PostParams.fromJson(Map<String, dynamic> json) =
      _$PostParams.fromJson;

  @override
  int get page;
  @override
  int get limit;
  String get tags;
  @override
  @JsonKey(ignore: true)
  $PostParamsCopyWith<PostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularParamsCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory $PopularParamsCopyWith(
          PopularParams value, $Res Function(PopularParams) then) =
      _$PopularParamsCopyWithImpl<$Res>;
  @override
  $Res call({int page, int limit, DateTime date, ScaleType scale});
}

/// @nodoc
class _$PopularParamsCopyWithImpl<$Res> extends _$QueryParamsCopyWithImpl<$Res>
    implements $PopularParamsCopyWith<$Res> {
  _$PopularParamsCopyWithImpl(
      PopularParams _value, $Res Function(PopularParams) _then)
      : super(_value, (v) => _then(v as PopularParams));

  @override
  PopularParams get _value => super._value as PopularParams;

  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? date = freezed,
    Object? scale = freezed,
  }) {
    return _then(PopularParams(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularParams implements PopularParams {
  const _$PopularParams(
      {this.page = 1,
      this.limit = 50,
      required this.date,
      this.scale = ScaleType.day,
      String? $type})
      : $type = $type ?? 'popular';

  factory _$PopularParams.fromJson(Map<String, dynamic> json) =>
      _$$PopularParamsFromJson(json);

  @JsonKey()
  @override
  final int page;
  @JsonKey()
  @override
  final int limit;
  @override
  final DateTime date;
  @JsonKey()
  @override
  final ScaleType scale;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QueryParams.popular(page: $page, limit: $limit, date: $date, scale: $scale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularParams &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.scale, scale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(scale));

  @JsonKey(ignore: true)
  @override
  $PopularParamsCopyWith<PopularParams> get copyWith =>
      _$PopularParamsCopyWithImpl<PopularParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, String tags) post,
    required TResult Function(
            int page, int limit, DateTime date, ScaleType scale)
        popular,
    required TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)
        recommended,
  }) {
    return popular(page, limit, date, scale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
  }) {
    return popular?.call(page, limit, date, scale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
    required TResult orElse(),
  }) {
    if (popular != null) {
      return popular(page, limit, date, scale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostParams value) post,
    required TResult Function(PopularParams value) popular,
    required TResult Function(RecommendedParams value) recommended,
  }) {
    return popular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
  }) {
    return popular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
    required TResult orElse(),
  }) {
    if (popular != null) {
      return popular(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularParamsToJson(this);
  }
}

abstract class PopularParams implements QueryParams {
  const factory PopularParams(
      {int page,
      int limit,
      required DateTime date,
      ScaleType scale}) = _$PopularParams;

  factory PopularParams.fromJson(Map<String, dynamic> json) =
      _$PopularParams.fromJson;

  @override
  int get page;
  @override
  int get limit;
  DateTime get date;
  ScaleType get scale;
  @override
  @JsonKey(ignore: true)
  $PopularParamsCopyWith<PopularParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedParamsCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory $RecommendedParamsCopyWith(
          RecommendedParams value, $Res Function(RecommendedParams) then) =
      _$RecommendedParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      int limit,
      @JsonKey(name: 'search[user_name]') String user,
      @JsonKey(name: 'search[post_tags_match]') String tags,
      @JsonKey(name: 'search[post_id]') int postId});
}

/// @nodoc
class _$RecommendedParamsCopyWithImpl<$Res>
    extends _$QueryParamsCopyWithImpl<$Res>
    implements $RecommendedParamsCopyWith<$Res> {
  _$RecommendedParamsCopyWithImpl(
      RecommendedParams _value, $Res Function(RecommendedParams) _then)
      : super(_value, (v) => _then(v as RecommendedParams));

  @override
  RecommendedParams get _value => super._value as RecommendedParams;

  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? user = freezed,
    Object? tags = freezed,
    Object? postId = freezed,
  }) {
    return _then(RecommendedParams(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendedParams implements RecommendedParams {
  const _$RecommendedParams(
      {this.page = 1,
      this.limit = 50,
      @JsonKey(name: 'search[user_name]') required this.user,
      @JsonKey(name: 'search[post_tags_match]') required this.tags,
      @JsonKey(name: 'search[post_id]') required this.postId,
      String? $type})
      : $type = $type ?? 'recommended';

  factory _$RecommendedParams.fromJson(Map<String, dynamic> json) =>
      _$$RecommendedParamsFromJson(json);

  @JsonKey()
  @override
  final int page;
  @JsonKey()
  @override
  final int limit;
  @override
  @JsonKey(name: 'search[user_name]')
  final String user;
  @override
  @JsonKey(name: 'search[post_tags_match]')
  final String tags;
  @override
  @JsonKey(name: 'search[post_id]')
  final int postId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QueryParams.recommended(page: $page, limit: $limit, user: $user, tags: $tags, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecommendedParams &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  $RecommendedParamsCopyWith<RecommendedParams> get copyWith =>
      _$RecommendedParamsCopyWithImpl<RecommendedParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, String tags) post,
    required TResult Function(
            int page, int limit, DateTime date, ScaleType scale)
        popular,
    required TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)
        recommended,
  }) {
    return recommended(page, limit, user, tags, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
  }) {
    return recommended?.call(page, limit, user, tags, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String tags)? post,
    TResult Function(int page, int limit, DateTime date, ScaleType scale)?
        popular,
    TResult Function(
            int page,
            int limit,
            @JsonKey(name: 'search[user_name]') String user,
            @JsonKey(name: 'search[post_tags_match]') String tags,
            @JsonKey(name: 'search[post_id]') int postId)?
        recommended,
    required TResult orElse(),
  }) {
    if (recommended != null) {
      return recommended(page, limit, user, tags, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostParams value) post,
    required TResult Function(PopularParams value) popular,
    required TResult Function(RecommendedParams value) recommended,
  }) {
    return recommended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
  }) {
    return recommended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostParams value)? post,
    TResult Function(PopularParams value)? popular,
    TResult Function(RecommendedParams value)? recommended,
    required TResult orElse(),
  }) {
    if (recommended != null) {
      return recommended(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendedParamsToJson(this);
  }
}

abstract class RecommendedParams implements QueryParams {
  const factory RecommendedParams(
          {int page,
          int limit,
          @JsonKey(name: 'search[user_name]') required String user,
          @JsonKey(name: 'search[post_tags_match]') required String tags,
          @JsonKey(name: 'search[post_id]') required int postId}) =
      _$RecommendedParams;

  factory RecommendedParams.fromJson(Map<String, dynamic> json) =
      _$RecommendedParams.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @JsonKey(name: 'search[user_name]')
  String get user;
  @JsonKey(name: 'search[post_tags_match]')
  String get tags;
  @JsonKey(name: 'search[post_id]')
  int get postId;
  @override
  @JsonKey(ignore: true)
  $RecommendedParamsCopyWith<RecommendedParams> get copyWith =>
      throw _privateConstructorUsedError;
}
