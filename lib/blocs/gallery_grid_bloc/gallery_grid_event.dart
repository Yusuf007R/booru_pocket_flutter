part of 'gallery_grid_bloc.dart';

@immutable
abstract class GalleryGridEvent {}

class PostsFetched extends GalleryGridEvent {
  final bool shouldReset;
  PostsFetched({this.shouldReset = false});
}

class PostsRefreshed extends GalleryGridEvent {}

class PostSelectedToggled extends GalleryGridEvent {
  final int postId;
  PostSelectedToggled({required this.postId});
}

class SetPostSelected extends GalleryGridEvent {
  final List<int> selectedPosts;
  SetPostSelected({required this.selectedPosts});
}
