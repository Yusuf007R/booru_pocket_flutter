// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();

  factory Post({
    required int id,
    @JsonKey(name: 'tag_string', fromJson: _fromJson)
        required List<String> tags,
    @JsonKey(name: 'tag_string_artist') required String artistTag,
    String? rating,
    required String source,
    @JsonKey(name: 'preview_file_url') required String previewFileUrl,
    @JsonKey(name: 'large_file_url') required String largeFileUrl,
    @JsonKey(name: 'file_url') required String fileUrl,
    @JsonKey(name: 'file_ext') required String fileExt,
    @JsonKey(name: 'image_width') required double imageWidth,
    @JsonKey(name: 'image_height') required double imageHeight,
    required int score,
    @JsonKey(name: 'fav_count') required int favoriteCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
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

  String get maxQuality => isVideo ? previewFileUrl : fileUrl;

  String get highQuality => isVideo ? previewFileUrl : largeFileUrl;

  String get lowQuality => previewFileUrl;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

List<String> _fromJson(
  String tags,
) {
  return tags.split(' ');
}
