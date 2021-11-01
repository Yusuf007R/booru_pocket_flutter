class Post {
  final int id;
  final List<String> tags;
  final String artistTag;
  final String? rating;
  final String source;
  final String maxQuality;
  final String highQuality;
  final String lowQuality;
  final bool isVideo;
  final int imageWidth;
  final int imageHeight;
  final int score;
  final int favoriteCount;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? video;

  Post(
      {required this.id,
      required this.tags,
      required this.artistTag,
      this.rating,
      required this.source,
      required this.maxQuality,
      required this.highQuality,
      required this.lowQuality,
      required this.isVideo,
      required this.imageWidth,
      required this.imageHeight,
      required this.score,
      required this.favoriteCount,
      required this.createdAt,
      this.video,
      required this.updatedAt});

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
      case 'zip':
        return true;
      default:
        return false;
    }
  }

  @override
  String toString() {
    return "($id,$lowQuality,$highQuality, $isVideo)";
  }
}
