part of 'gallery_grid_cubit.dart';

@freezed
class GalleryGridState with _$GalleryGridState {
  factory GalleryGridState({
    required String uniqueKey,
    @Default([]) List<Post> posts,
    @Default(GridStatus.idle) GridStatus gridStatus,
    @Default([]) List<int> selectedPosts,
  }) = _GalleryGridState;
}

enum GridStatus { refreshing, idle, fetching }
