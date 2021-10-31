import 'package:booru_pocket_flutter/models/shared/post.dart';

class DanBooruPost {
  static Post fromJson(Map<String, dynamic> json) {
    final bool isVideo = checkIsVideo(json['file_ext']);
    return Post(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        score: json["score"],
        source: json["source"],
        updatedAt: DateTime.parse(json["updated_at"]),
        rating: json["rating"],
        imageWidth: json["image_width"],
        imageHeight: json["image_height"],
        tags: json["tag_string"].split(' '),
        favoriteCount: json["fav_count"],
        isVideo: isVideo,
        artistTag: json["tag_string_artist"],
        maxQuality: isVideo ? json['preview_file_url'] : json['file_url'],
        highQuality:
            isVideo ? json['preview_file_url'] : json["large_file_url"],
        lowQuality: json["preview_file_url"],
        video: isVideo ? json['large_file_url'] : null);
  }

  static bool checkIsVideo(String fileExt) {
    switch (fileExt) {
      case 'mp4':
        return true;
      case 'webm':
        return true;
      default:
        return false;
    }
  }
}
