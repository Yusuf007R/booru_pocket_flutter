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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required int id,
      @JsonKey(name: 'tag_string') required String tagString,
      @JsonKey(name: 'tag_string_artist') required String artistTag,
      String? rating,
      required String source,
      @JsonKey(name: 'preview_file_url') required String previewFileUrl,
      @JsonKey(name: 'large_file_url') required String largeFileUrl,
      @JsonKey(name: 'file_url') required String fileUrl,
      @JsonKey(name: 'file_ext') required String fileExt,
      @JsonKey(name: 'image_width') required int imageWidth,
      @JsonKey(name: 'image_height') required int imageHeight,
      required int score,
      @JsonKey(name: 'fav_count') required int favoriteCount,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      String? video}) {
    return _Post(
      id: id,
      tagString: tagString,
      artistTag: artistTag,
      rating: rating,
      source: source,
      previewFileUrl: previewFileUrl,
      largeFileUrl: largeFileUrl,
      fileUrl: fileUrl,
      fileExt: fileExt,
      imageWidth: imageWidth,
      imageHeight: imageHeight,
      score: score,
      favoriteCount: favoriteCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      video: video,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string')
  String get tagString => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_string_artist')
  String get artistTag => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
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
  int get imageWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_height')
  int get imageHeight => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'fav_count')
  int get favoriteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'tag_string') String tagString,
      @JsonKey(name: 'tag_string_artist') String artistTag,
      String? rating,
      String source,
      @JsonKey(name: 'preview_file_url') String previewFileUrl,
      @JsonKey(name: 'large_file_url') String largeFileUrl,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'file_ext') String fileExt,
      @JsonKey(name: 'image_width') int imageWidth,
      @JsonKey(name: 'image_height') int imageHeight,
      int score,
      @JsonKey(name: 'fav_count') int favoriteCount,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
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
    Object? tagString = freezed,
    Object? artistTag = freezed,
    Object? rating = freezed,
    Object? source = freezed,
    Object? previewFileUrl = freezed,
    Object? largeFileUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileExt = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? score = freezed,
    Object? favoriteCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tagString: tagString == freezed
          ? _value.tagString
          : tagString // ignore: cast_nullable_to_non_nullable
              as String,
      artistTag: artistTag == freezed
          ? _value.artistTag
          : artistTag // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int,
      imageHeight: imageHeight == freezed
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'tag_string') String tagString,
      @JsonKey(name: 'tag_string_artist') String artistTag,
      String? rating,
      String source,
      @JsonKey(name: 'preview_file_url') String previewFileUrl,
      @JsonKey(name: 'large_file_url') String largeFileUrl,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'file_ext') String fileExt,
      @JsonKey(name: 'image_width') int imageWidth,
      @JsonKey(name: 'image_height') int imageHeight,
      int score,
      @JsonKey(name: 'fav_count') int favoriteCount,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String? video});
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? tagString = freezed,
    Object? artistTag = freezed,
    Object? rating = freezed,
    Object? source = freezed,
    Object? previewFileUrl = freezed,
    Object? largeFileUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileExt = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? score = freezed,
    Object? favoriteCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? video = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tagString: tagString == freezed
          ? _value.tagString
          : tagString // ignore: cast_nullable_to_non_nullable
              as String,
      artistTag: artistTag == freezed
          ? _value.artistTag
          : artistTag // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int,
      imageHeight: imageHeight == freezed
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      @JsonKey(name: 'tag_string') required this.tagString,
      @JsonKey(name: 'tag_string_artist') required this.artistTag,
      this.rating,
      required this.source,
      @JsonKey(name: 'preview_file_url') required this.previewFileUrl,
      @JsonKey(name: 'large_file_url') required this.largeFileUrl,
      @JsonKey(name: 'file_url') required this.fileUrl,
      @JsonKey(name: 'file_ext') required this.fileExt,
      @JsonKey(name: 'image_width') required this.imageWidth,
      @JsonKey(name: 'image_height') required this.imageHeight,
      required this.score,
      @JsonKey(name: 'fav_count') required this.favoriteCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.video})
      : super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'tag_string')
  final String tagString;
  @override
  @JsonKey(name: 'tag_string_artist')
  final String artistTag;
  @override
  final String? rating;
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
  final int imageWidth;
  @override
  @JsonKey(name: 'image_height')
  final int imageHeight;
  @override
  final int score;
  @override
  @JsonKey(name: 'fav_count')
  final int favoriteCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String? video;

  @override
  String toString() {
    return 'Post(id: $id, tagString: $tagString, artistTag: $artistTag, rating: $rating, source: $source, previewFileUrl: $previewFileUrl, largeFileUrl: $largeFileUrl, fileUrl: $fileUrl, fileExt: $fileExt, imageWidth: $imageWidth, imageHeight: $imageHeight, score: $score, favoriteCount: $favoriteCount, createdAt: $createdAt, updatedAt: $updatedAt, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tagString, tagString) &&
            const DeepCollectionEquality().equals(other.artistTag, artistTag) &&
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
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.video, video));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tagString),
      const DeepCollectionEquality().hash(artistTag),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(previewFileUrl),
      const DeepCollectionEquality().hash(largeFileUrl),
      const DeepCollectionEquality().hash(fileUrl),
      const DeepCollectionEquality().hash(fileExt),
      const DeepCollectionEquality().hash(imageWidth),
      const DeepCollectionEquality().hash(imageHeight),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(favoriteCount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(video));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post extends Post {
  factory _Post(
      {required int id,
      @JsonKey(name: 'tag_string') required String tagString,
      @JsonKey(name: 'tag_string_artist') required String artistTag,
      String? rating,
      required String source,
      @JsonKey(name: 'preview_file_url') required String previewFileUrl,
      @JsonKey(name: 'large_file_url') required String largeFileUrl,
      @JsonKey(name: 'file_url') required String fileUrl,
      @JsonKey(name: 'file_ext') required String fileExt,
      @JsonKey(name: 'image_width') required int imageWidth,
      @JsonKey(name: 'image_height') required int imageHeight,
      required int score,
      @JsonKey(name: 'fav_count') required int favoriteCount,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      String? video}) = _$_Post;
  _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'tag_string')
  String get tagString;
  @override
  @JsonKey(name: 'tag_string_artist')
  String get artistTag;
  @override
  String? get rating;
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
  int get imageWidth;
  @override
  @JsonKey(name: 'image_height')
  int get imageHeight;
  @override
  int get score;
  @override
  @JsonKey(name: 'fav_count')
  int get favoriteCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  String? get video;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
