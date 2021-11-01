part of 'gallery_grid_bloc.dart';

class GalleryGridBlocState {
  final List<Post> posts;
  final int page;
  final bool loading;
  final bool refreshing;
  final DanbooruRespository repository = DanbooruRespository();

  GalleryGridBlocState({
    this.page = 1,
    this.posts = const [],
    this.refreshing = false,
    this.loading = false,
  });

  GalleryGridBlocState copyWith(
      {int? page, List<Post>? posts, bool? loading, bool? refreshing}) {
    return GalleryGridBlocState(
      page: page ?? this.page,
      posts: posts ?? this.posts,
      refreshing: refreshing ?? this.refreshing,
      loading: loading ?? this.loading,
    );
  }
}
