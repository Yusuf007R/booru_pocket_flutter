part of 'gallery_grid_bloc.dart';

class GalleryGridBlocState {
  final List<Post> posts;
  final int page;
  final bool loading;
  final bool refreshing;
  final String tags;


  GalleryGridBlocState({
    this.page = 1,
    this.posts = const [],
    this.refreshing = false,
    this.loading = false,
    this.tags = '',
  });

  GalleryGridBlocState copyWith(
      {int? page,
      List<Post>? posts,
      bool? loading,
      bool? refreshing,
      String? tags}) {
    return GalleryGridBlocState(
      page: page ?? this.page,
      posts: posts ?? this.posts,
      refreshing: refreshing ?? this.refreshing,
      loading: loading ?? this.loading,
      tags: tags ?? this.tags,
    );
  }
}
