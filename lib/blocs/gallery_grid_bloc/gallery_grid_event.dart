part of 'gallery_grid_bloc.dart';

@immutable
abstract class GalleryGridEvent {}

class PostsFetched extends GalleryGridEvent {}

class PostsRefreshed extends GalleryGridEvent {}

class GalleryTypeChanged extends GalleryGridEvent {
  final GalleryType queryType;
  GalleryTypeChanged({required this.queryType});
}

class ParamsUpdated extends GalleryGridEvent {
  final QueryParams params;
  ParamsUpdated({required this.params});
}
