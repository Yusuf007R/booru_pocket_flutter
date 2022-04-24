part of 'gallery_grid_bloc.dart';

enum GridStatus { refreshing, idle, fetching }

@freezed
class GalleryGridState with _$GalleryGridState {
  factory GalleryGridState({
    @Default([]) List<Post> posts,
    @Default(GridStatus.idle) GridStatus gridStatus,
    required String uniqueKey,
    @Default([]) List<int> selectedPosts,
  }) = _GalleryGridState;

  factory GalleryGridState.fromJson(Map<String, dynamic> json) =>
      _$GalleryGridStateFromJson(json);
}
