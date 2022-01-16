part of 'gallery_grid_bloc.dart';

enum NavBarStatus { fetching, idle }

@freezed
class GalleryGridState with _$GalleryGridState {
  factory GalleryGridState({
    @Default([]) List<Post> posts,
    @Default(false) bool loading,
    @Default(false) bool refreshing,
    required String uniqueKey,
    @Default(1) int currentDetailIndex,
  }) = _GalleryGridState;

  factory GalleryGridState.fromJson(Map<String, dynamic> json) =>
      _$GalleryGridStateFromJson(json);
}
