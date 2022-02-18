part of 'gallery_grid_bloc.dart';

@immutable
abstract class GalleryGridEvent {}

class PostsFetched extends GalleryGridEvent {
  final bool shouldReset;
  PostsFetched({this.shouldReset = false});
}

class PostsRefreshed extends GalleryGridEvent {}
