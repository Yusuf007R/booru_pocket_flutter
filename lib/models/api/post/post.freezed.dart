// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PostCopyWithImpl<$Res>;
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
      @JsonKey(fromJson: _ratingFromJson)
          PostRating rating,
      String source,
      @JsonKey(name: 'preview_file_url')
          String previewFileUrl,
      @JsonKey(name: 'large_file_url')
          String largeFileUrl,
      @JsonKey(name: 'file_url')
          String fileUrl,
      @JsonKey(name: 'file_ext')
          String fileExt,
      @JsonKey(name: 'image_width')
          double imageWidth,
      @JsonKey(name: 'image_height')
          double imageHeight,
      @JsonKey(name: 'file_size')
          double size,
      int score,
      @JsonKey(name: 'fav_count')
          int favoriteCount,
      @JsonKey(name: 'uploader_id')
          int uploaderId,
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      @JsonKey(name: 'updated_at')
          DateTime updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
          List<String> meta,
      String? video});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tags = freezed,
    Object? artistTag = freezed,
    Object? characterTag = freezed,
    Object? seriesTag = freezed,
    Object? rating = freezed,
    Object? source = freezed,
    Object? previewFileUrl = freezed,
    Object? largeFileUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileExt = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? size = freezed,
    Object? score = freezed,
    Object? favoriteCount = freezed,
    Object? uploaderId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? meta = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artistTag: artistTag == freezed
          ? _value.artistTag
          : artistTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      characterTag: characterTag == freezed
          ? _value.characterTag
          : characterTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seriesTag: seriesTag == freezed
          ? _value.seriesTag
          : seriesTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as PostRating,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      previewFileUrl: previewFileUrl == freezed
          ? _value.previewFileUrl
          : previewFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeFileUrl: largeFileUrl == freezed
          ? _value.largeFileUrl
          : largeFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileExt: fileExt == freezed
          ? _value.fileExt
          : fileExt // ignore: cast_nullable_to_non_nullable
              as String,
      imageWidth: imageWidth == freezed
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
      imageHeight: imageHeight == freezed
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      uploaderId: uploaderId == freezed
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<String>,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
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
      @JsonKey(fromJson: _ratingFromJson)
          PostRating rating,
      String source,
      @JsonKey(name: 'preview_file_url')
          String previewFileUrl,
      @JsonKey(name: 'large_file_url')
          String largeFileUrl,
      @JsonKey(name: 'file_url')
          String fileUrl,
      @JsonKey(name: 'file_ext')
          String fileExt,
      @JsonKey(name: 'image_width')
          double imageWidth,
      @JsonKey(name: 'image_height')
          double imageHeight,
      @JsonKey(name: 'file_size')
          double size,
      int score,
      @JsonKey(name: 'fav_count')
          int favoriteCount,
      @JsonKey(name: 'uploader_id')
          int uploaderId,
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      @JsonKey(name: 'updated_at')
          DateTime updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
          List<String> meta,
      String? video});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, (v) => _then(v as _$_Post));

  @override
  _$_Post get _value => super._value as _$_Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? tags = freezed,
    Object? artistTag = freezed,
    Object? characterTag = freezed,
    Object? seriesTag = freezed,
    Object? rating = freezed,
    Object? source = freezed,
    Object? previewFileUrl = freezed,
    Object? largeFileUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileExt = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? size = freezed,
    Object? score = freezed,
    Object? favoriteCount = freezed,
    Object? uploaderId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? meta = freezed,
    Object? video = freezed,
  }) {
    return _then(_$_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artistTag: artistTag == freezed
          ? _value._artistTag
          : artistTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      characterTag: characterTag == freezed
          ? _value._characterTag
          : characterTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seriesTag: seriesTag == freezed
          ? _value._seriesTag
          : seriesTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as PostRating,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      previewFileUrl: previewFileUrl == freezed
          ? _value.previewFileUrl
          : previewFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeFileUrl: largeFileUrl == freezed
          ? _value.largeFileUrl
          : largeFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileExt: fileExt == freezed
          ? _value.fileExt
          : fileExt // ignore: cast_nullable_to_non_nullable
              as String,
      imageWidth: imageWidth == freezed
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
      imageHeight: imageHeight == freezed
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      uploaderId: uploaderId == freezed
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meta: meta == freezed
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<String>,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  _$_Post(
      {required this.id,
      @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
          required final List<String> tags,
      @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
          required final List<String> artistTag,
      @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
          required final List<String> characterTag,
      @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
          required final List<String> seriesTag,
      @JsonKey(fromJson: _ratingFromJson)
          required this.rating,
      required this.source,
      @JsonKey(name: 'preview_file_url')
          required this.previewFileUrl,
      @JsonKey(name: 'large_file_url')
          required this.largeFileUrl,
      @JsonKey(name: 'file_url')
          required this.fileUrl,
      @JsonKey(name: 'file_ext')
          required this.fileExt,
      @JsonKey(name: 'image_width')
          required this.imageWidth,
      @JsonKey(name: 'image_height')
          required this.imageHeight,
      @JsonKey(name: 'file_size')
          required this.size,
      required this.score,
      @JsonKey(name: 'fav_count')
          required this.favoriteCount,
      @JsonKey(name: 'uploader_id')
          required this.uploaderId,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      @JsonKey(name: 'updated_at')
          required this.updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
          required final List<String> meta,
      this.video})
      : _tags = tags,
        _artistTag = artistTag,
        _characterTag = characterTag,
        _seriesTag = seriesTag,
        _meta = meta,
        super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final int id;
  final List<String> _tags;
  @override
  @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _artistTag;
  @override
  @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
  List<String> get artistTag {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artistTag);
  }

  final List<String> _characterTag;
  @override
  @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
  List<String> get characterTag {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterTag);
  }

  final List<String> _seriesTag;
  @override
  @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
  List<String> get seriesTag {
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._artistTag, _artistTag) &&
            const DeepCollectionEquality()
                .equals(other._characterTag, _characterTag) &&
            const DeepCollectionEquality()
                .equals(other._seriesTag, _seriesTag) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.previewFileUrl, previewFileUrl) &&
            const DeepCollectionEquality()
                .equals(other.largeFileUrl, largeFileUrl) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl) &&
            const DeepCollectionEquality().equals(other.fileExt, fileExt) &&
            const DeepCollectionEquality()
                .equals(other.imageWidth, imageWidth) &&
            const DeepCollectionEquality()
                .equals(other.imageHeight, imageHeight) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality()
                .equals(other.uploaderId, uploaderId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality().equals(other.video, video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_artistTag),
        const DeepCollectionEquality().hash(_characterTag),
        const DeepCollectionEquality().hash(_seriesTag),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(previewFileUrl),
        const DeepCollectionEquality().hash(largeFileUrl),
        const DeepCollectionEquality().hash(fileUrl),
        const DeepCollectionEquality().hash(fileExt),
        const DeepCollectionEquality().hash(imageWidth),
        const DeepCollectionEquality().hash(imageHeight),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(score),
        const DeepCollectionEquality().hash(favoriteCount),
        const DeepCollectionEquality().hash(uploaderId),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(_meta),
        const DeepCollectionEquality().hash(video)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
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
      @JsonKey(fromJson: _ratingFromJson)
          required final PostRating rating,
      required final String source,
      @JsonKey(name: 'preview_file_url')
          required final String previewFileUrl,
      @JsonKey(name: 'large_file_url')
          required final String largeFileUrl,
      @JsonKey(name: 'file_url')
          required final String fileUrl,
      @JsonKey(name: 'file_ext')
          required final String fileExt,
      @JsonKey(name: 'image_width')
          required final double imageWidth,
      @JsonKey(name: 'image_height')
          required final double imageHeight,
      @JsonKey(name: 'file_size')
          required final double size,
      required final int score,
      @JsonKey(name: 'fav_count')
          required final int favoriteCount,
      @JsonKey(name: 'uploader_id')
          required final int uploaderId,
      @JsonKey(name: 'created_at')
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
          required final DateTime updatedAt,
      @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
          required final List<String> meta,
      final String? video}) = _$_Post;
  _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
  List<String> get artistTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
  List<String> get characterTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
  List<String> get seriesTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _ratingFromJson)
  PostRating get rating => throw _privateConstructorUsedError;
  @override
  String get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'preview_file_url')
  String get previewFileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'large_file_url')
  String get largeFileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_url')
  String get fileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_ext')
  String get fileExt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_width')
  double get imageWidth => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_height')
  double get imageHeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_size')
  double get size => throw _privateConstructorUsedError;
  @override
  int get score => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fav_count')
  int get favoriteCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'uploader_id')
  int get uploaderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
  List<String> get meta => throw _privateConstructorUsedError;
  @override
  String? get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
