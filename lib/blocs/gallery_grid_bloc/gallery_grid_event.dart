part of 'gallery_grid_bloc.dart';

@immutable
abstract class GalleryGridEvent {}

class PostsFetched extends GalleryGridEvent {}

class PostsRefreshed extends GalleryGridEvent {}

class ParamsUpdated extends GalleryGridEvent {
  final QueryParams params;
  ParamsUpdated({required this.params});
}

class CurrentDetailIndexChanged extends GalleryGridEvent {
  final int currentDetailIndex;
  CurrentDetailIndexChanged({required this.currentDetailIndex});
}
