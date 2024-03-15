// ignore_for_file: invalid_annotation_target

import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

List<PostVariants> _postVariantsFromJson(
  Map<String, dynamic> json,
) {
  return (json['variants'] as List)
      .map((e) => PostVariants.fromJson(e as Map<String, dynamic>))
      .toList();
}

PostVariantType _postVariantTypeFromJson(
  String type,
) {
  switch (type) {
    case '180x180':
      return PostVariantType.x180;
    case '360x360':
      return PostVariantType.x360;
    case '720x720':
      return PostVariantType.x720;
    case 'original':
      return PostVariantType.original;

    default:
      return PostVariantType.original;
  }
}

PostRating _ratingFromJson(
  String rating,
) {
  switch (rating) {
    case 's':
      return PostRating.sensitive;
    case 'g':
      return PostRating.general;
    case 'q':
      return PostRating.questionable;
    case 'e':
      return PostRating.explicit;
    default:
      return PostRating.unknown;
  }
}

List<String> _tagsArrayFromJson(
  String tags,
) {
  return tags.split(' ');
}

@freezed
class Post with _$Post {
  late final bool isVideo = ['mp4', 'webm', 'zip'].contains(fileExt);

  late final bool haveAudio = isVideo && meta.contains('sound');

  factory Post({
    required int id,
    @JsonKey(name: 'tag_string_general', fromJson: _tagsArrayFromJson)
    required List<String> tags,
    @JsonKey(name: 'tag_string_artist', fromJson: _tagsArrayFromJson)
    required List<String> artistTag,
    @JsonKey(name: 'tag_string_character', fromJson: _tagsArrayFromJson)
    required List<String> characterTag,
    @JsonKey(name: 'tag_string_copyright', fromJson: _tagsArrayFromJson)
    required List<String> seriesTag,
    @JsonKey(fromJson: _ratingFromJson) required PostRating rating,
    required String source,
    @JsonKey(name: 'file_ext') required String fileExt,
    @JsonKey(name: 'image_width') required double imageWidth,
    @JsonKey(name: 'image_height') required double imageHeight,
    @JsonKey(name: 'file_size') required double size,
    required int score,
    @JsonKey(name: 'fav_count') required int favoriteCount,
    @JsonKey(name: 'uploader_id') required int uploaderId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'tag_string_meta', fromJson: _tagsArrayFromJson)
    required List<String> meta,
    @JsonKey(name: 'media_asset', fromJson: _postVariantsFromJson)
    required List<PostVariants> postVariants,
    String? video,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Post._();
}

enum PostRating { general, sensitive, questionable, explicit, all, unknown }

@freezed
class PostVariants with _$PostVariants {
  factory PostVariants({
    @JsonKey(fromJson: _postVariantTypeFromJson) required PostVariantType type,
    required String url,
    required int width,
    required int height,
    @JsonKey(name: 'file_ext') required String fileExt,
  }) = _PostVariants;

  factory PostVariants.fromJson(Map<String, dynamic> json) =>
      _$PostVariantsFromJson(json);

  PostVariants._();
}

enum PostVariantType { x180, x360, x720, original }

extension PostExtension on Post {
  static Map<String, dynamic> memo = {};

  String getImage(ImageQuality quality) {
    final cacheKey = '$id-${quality.toString()}';
    final cachedUrl = memo[cacheKey] as String?;

    if (cachedUrl != null) {
      return cachedUrl;
    }

    late final String url;
    switch (quality) {
      case ImageQuality.high:
        url = getVariantUrl(PostVariantType.x720);
        break;
      case ImageQuality.low:
        url = getVariantUrl(PostVariantType.x360);
        break;
      case ImageQuality.max:
        url = getVariantUrl(PostVariantType.original);
        break;
      default:
        url = getVariantUrl(PostVariantType.x360);
        break;
    }
    memo[cacheKey] = url;
    return url;
  }

  String getVariantUrl(PostVariantType type) {
    final variant = postVariants.firstWhere(
      (element) => element.type == type,
      orElse: () => postVariants.first,
    );
    final variantUrl = variant.url;
    return variantUrl;
  }
}
