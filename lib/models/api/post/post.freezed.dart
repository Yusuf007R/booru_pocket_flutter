// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
  List<String> get artistTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
  List<String> get characterTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
  List<String> get seriesTag => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _ratingFromJson)
  PostRating get rating => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_file_url')
  String get previewFileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_file_url')
  String get largeFileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  String get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_ext')
  String get fileExt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_width')
  double get imageWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_height')
  double get imageHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  double get size => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'fav_count')
  int get favoriteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploader_id')
  int get uploaderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
  List<String> get meta => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
      List<String> tags,
      @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
      List<String> artistTag,
      @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
      List<String> characterTag,
      @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
      List<String> seriesTag,
      @JsonKey(fromJson: _ratingFromJson) PostRating rating,
      String source,
      @JsonKey(name: 'preview_file_url') String previewFileUrl,
      @JsonKey(name: 'large_file_url') String largeFileUrl,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'file_ext') String fileExt,
      @JsonKey(name: 'image_width') double imageWidth,
      @JsonKey(name: 'image_height') double imageHeight,
      @JsonKey(name: 'file_size') double size,
      int score,
      @JsonKey(name: 'fav_count') int favoriteCount,
      @JsonKey(name: 'uploader_id') int uploaderId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
      List<String> meta,
      String? video});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? artistTag = null,
    Object? characterTag = null,
    Object? seriesTag = null,
    Object? rating = null,
    Object? source = null,
    Object? previewFileUrl = null,
    Object? largeFileUrl = null,
    Object? fileUrl = null,
    Object? fileExt = null,
    Object? imageWidth = null,
    Object? imageHeight = null,
    Object? size = null,
    Object? score = null,
    Object? favoriteCount = null,
    Object? uploaderId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? meta = null,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artistTag: null == artistTag
          ? _value.artistTag
          : artistTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      characterTag: null == characterTag
          ? _value.characterTag
          : characterTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seriesTag: null == seriesTag
          ? _value.seriesTag
          : seriesTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as PostRating,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      previewFileUrl: null == previewFileUrl
          ? _value.previewFileUrl
          : previewFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeFileUrl: null == largeFileUrl
          ? _value.largeFileUrl
          : largeFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileExt: null == fileExt
          ? _value.fileExt
          : fileExt // ignore: cast_nullable_to_non_nullable
              as String,
      imageWidth: null == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
      imageHeight: null == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      uploaderId: null == uploaderId
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<String>,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
      List<String> tags,
      @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
      List<String> artistTag,
      @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
      List<String> characterTag,
      @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
      List<String> seriesTag,
      @JsonKey(fromJson: _ratingFromJson) PostRating rating,
      String source,
      @JsonKey(name: 'preview_file_url') String previewFileUrl,
      @JsonKey(name: 'large_file_url') String largeFileUrl,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'file_ext') String fileExt,
      @JsonKey(name: 'image_width') double imageWidth,
      @JsonKey(name: 'image_height') double imageHeight,
      @JsonKey(name: 'file_size') double size,
      int score,
      @JsonKey(name: 'fav_count') int favoriteCount,
      @JsonKey(name: 'uploader_id') int uploaderId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
      List<String> meta,
      String? video});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? artistTag = null,
    Object? characterTag = null,
    Object? seriesTag = null,
    Object? rating = null,
    Object? source = null,
    Object? previewFileUrl = null,
    Object? largeFileUrl = null,
    Object? fileUrl = null,
    Object? fileExt = null,
    Object? imageWidth = null,
    Object? imageHeight = null,
    Object? size = null,
    Object? score = null,
    Object? favoriteCount = null,
    Object? uploaderId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? meta = null,
    Object? video = freezed,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artistTag: null == artistTag
          ? _value._artistTag
          : artistTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      characterTag: null == characterTag
          ? _value._characterTag
          : characterTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seriesTag: null == seriesTag
          ? _value._seriesTag
          : seriesTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as PostRating,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      previewFileUrl: null == previewFileUrl
          ? _value.previewFileUrl
          : previewFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeFileUrl: null == largeFileUrl
          ? _value.largeFileUrl
          : largeFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileExt: null == fileExt
          ? _value.fileExt
          : fileExt // ignore: cast_nullable_to_non_nullable
              as String,
      imageWidth: null == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
      imageHeight: null == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      uploaderId: null == uploaderId
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<String>,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl extends _Post {
  _$PostImpl(
      {required this.id,
      @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
      required final List<String> tags,
      @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
      required final List<String> artistTag,
      @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
      required final List<String> characterTag,
      @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
      required final List<String> seriesTag,
      @JsonKey(fromJson: _ratingFromJson) required this.rating,
      required this.source,
      @JsonKey(name: 'preview_file_url') required this.previewFileUrl,
      @JsonKey(name: 'large_file_url') required this.largeFileUrl,
      @JsonKey(name: 'file_url') required this.fileUrl,
      @JsonKey(name: 'file_ext') required this.fileExt,
      @JsonKey(name: 'image_width') required this.imageWidth,
      @JsonKey(name: 'image_height') required this.imageHeight,
      @JsonKey(name: 'file_size') required this.size,
      required this.score,
      @JsonKey(name: 'fav_count') required this.favoriteCount,
      @JsonKey(name: 'uploader_id') required this.uploaderId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
      required final List<String> meta,
      this.video})
      : _tags = tags,
        _artistTag = artistTag,
        _characterTag = characterTag,
        _seriesTag = seriesTag,
        _meta = meta,
        super._();

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int id;
  final List<String> _tags;
  @override
  @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _artistTag;
  @override
  @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
  List<String> get artistTag {
    if (_artistTag is EqualUnmodifiableListView) return _artistTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artistTag);
  }

  final List<String> _characterTag;
  @override
  @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
  List<String> get characterTag {
    if (_characterTag is EqualUnmodifiableListView) return _characterTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterTag);
  }

  final List<String> _seriesTag;
  @override
  @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
  List<String> get seriesTag {
    if (_seriesTag is EqualUnmodifiableListView) return _seriesTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seriesTag);
  }

  @override
  @JsonKey(fromJson: _ratingFromJson)
  final PostRating rating;
  @override
  final String source;
  @override
  @JsonKey(name: 'preview_file_url')
  final String previewFileUrl;
  @override
  @JsonKey(name: 'large_file_url')
  final String largeFileUrl;
  @override
  @JsonKey(name: 'file_url')
  final String fileUrl;
  @override
  @JsonKey(name: 'file_ext')
  final String fileExt;
  @override
  @JsonKey(name: 'image_width')
  final double imageWidth;
  @override
  @JsonKey(name: 'image_height')
  final double imageHeight;
  @override
  @JsonKey(name: 'file_size')
  final double size;
  @override
  final int score;
  @override
  @JsonKey(name: 'fav_count')
  final int favoriteCount;
  @override
  @JsonKey(name: 'uploader_id')
  final int uploaderId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final List<String> _meta;
  @override
  @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
  List<String> get meta {
    if (_meta is EqualUnmodifiableListView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meta);
  }

  @override
  final String? video;

  @override
  String toString() {
    return 'Post(id: $id, tags: $tags, artistTag: $artistTag, characterTag: $characterTag, seriesTag: $seriesTag, rating: $rating, source: $source, previewFileUrl: $previewFileUrl, largeFileUrl: $largeFileUrl, fileUrl: $fileUrl, fileExt: $fileExt, imageWidth: $imageWidth, imageHeight: $imageHeight, size: $size, score: $score, favoriteCount: $favoriteCount, uploaderId: $uploaderId, createdAt: $createdAt, updatedAt: $updatedAt, meta: $meta, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._artistTag, _artistTag) &&
            const DeepCollectionEquality()
                .equals(other._characterTag, _characterTag) &&
            const DeepCollectionEquality()
                .equals(other._seriesTag, _seriesTag) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.previewFileUrl, previewFileUrl) ||
                other.previewFileUrl == previewFileUrl) &&
            (identical(other.largeFileUrl, largeFileUrl) ||
                other.largeFileUrl == largeFileUrl) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileExt, fileExt) || other.fileExt == fileExt) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.uploaderId, uploaderId) ||
                other.uploaderId == uploaderId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_artistTag),
        const DeepCollectionEquality().hash(_characterTag),
        const DeepCollectionEquality().hash(_seriesTag),
        rating,
        source,
        previewFileUrl,
        largeFileUrl,
        fileUrl,
        fileExt,
        imageWidth,
        imageHeight,
        size,
        score,
        favoriteCount,
        uploaderId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_meta),
        video
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  factory _Post(
      {required final int id,
      @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
      required final List<String> tags,
      @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
      required final List<String> artistTag,
      @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
      required final List<String> characterTag,
      @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
      required final List<String> seriesTag,
      @JsonKey(fromJson: _ratingFromJson) required final PostRating rating,
      required final String source,
      @JsonKey(name: 'preview_file_url') required final String previewFileUrl,
      @JsonKey(name: 'large_file_url') required final String largeFileUrl,
      @JsonKey(name: 'file_url') required final String fileUrl,
      @JsonKey(name: 'file_ext') required final String fileExt,
      @JsonKey(name: 'image_width') required final double imageWidth,
      @JsonKey(name: 'image_height') required final double imageHeight,
      @JsonKey(name: 'file_size') required final double size,
      required final int score,
      @JsonKey(name: 'fav_count') required final int favoriteCount,
      @JsonKey(name: 'uploader_id') required final int uploaderId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
      required final List<String> meta,
      final String? video}) = _$PostImpl;
  _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
  List<String> get tags;
  @override
  @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
  List<String> get artistTag;
  @override
  @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
  List<String> get characterTag;
  @override
  @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
  List<String> get seriesTag;
  @override
  @JsonKey(fromJson: _ratingFromJson)
  PostRating get rating;
  @override
  String get source;
  @override
  @JsonKey(name: 'preview_file_url')
  String get previewFileUrl;
  @override
  @JsonKey(name: 'large_file_url')
  String get largeFileUrl;
  @override
  @JsonKey(name: 'file_url')
  String get fileUrl;
  @override
  @JsonKey(name: 'file_ext')
  String get fileExt;
  @override
  @JsonKey(name: 'image_width')
  double get imageWidth;
  @override
  @JsonKey(name: 'image_height')
  double get imageHeight;
  @override
  @JsonKey(name: 'file_size')
  double get size;
  @override
  int get score;
  @override
  @JsonKey(name: 'fav_count')
  int get favoriteCount;
  @override
  @JsonKey(name: 'uploader_id')
  int get uploaderId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
  List<String> get meta;
  @override
  String? get video;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
