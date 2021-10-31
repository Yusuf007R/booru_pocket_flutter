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

  @override
  String toString() {
    return "($id,$lowQuality,$highQuality, $isVideo)";
  }
}
