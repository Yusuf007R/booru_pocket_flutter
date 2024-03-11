// ignore_for_file: invalid_annotation_target

import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

enum PostRating { general, sensitive, questionable, explicit, all, unknown }

@freezed
class Post with _$Post {
  const Post._();

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
    @JsonKey(name: 'preview_file_url') required String previewFileUrl,
    @JsonKey(name: 'large_file_url') required String largeFileUrl,
    @JsonKey(name: 'file_url') required String fileUrl,
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
    String? video,
  }) = _Post;

  bool get isVideo {
    switch (fileExt) {
      case 'mp4':
        return true;
      case 'webm':
        return true;
      case 'zip':
        return true;
      default:
        return false;
    }
  }

  bool get haveAudio => isVideo && meta.contains('sound');

  String get maxQuality => isVideo ? previewFileUrl : fileUrl;

  String get highQuality => isVideo ? previewFileUrl : largeFileUrl;

  String get lowQuality => previewFileUrl;

  String getImage(ImageQuality quality) {
    switch (quality) {
      case ImageQuality.high:
        return highQuality;
      case ImageQuality.low:
        return lowQuality;
      case ImageQuality.max:
        return maxQuality;
      default:
        return lowQuality;
    }
  }

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

List<String> _tagsArrayFromJson(
  String tags,
) {
  return tags.split(' ');
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
