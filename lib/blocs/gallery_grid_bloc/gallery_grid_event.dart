part of 'gallery_grid_bloc.dart';

@immutable
abstract class GalleryGridBlocEvent {}

class PostsFetched extends GalleryGridBlocEvent {}

class PostsRefreshed extends GalleryGridBlocEvent {}
