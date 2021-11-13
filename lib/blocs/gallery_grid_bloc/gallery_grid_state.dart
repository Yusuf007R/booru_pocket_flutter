part of 'gallery_grid_bloc.dart';

enum GalleryType { popular, recommended, post }

abstract class GalleryGridBaseState extends Equatable {
  const GalleryGridBaseState();

  @override
  List<Object> get props => [];
}

class GalleryGridState extends GalleryGridBaseState {
  final List<Post> posts;
  final bool loading;
  final bool refreshing;
  final String uniqueKey;
  final GalleryType queryType;
  final QueryParams params;
  final int currentDetailIndex;

  const GalleryGridState({
    this.posts = const [],
    this.refreshing = false,
    this.loading = false,
    this.queryType = GalleryType.post,
    this.params = const QueryParams(),
    this.currentDetailIndex = 1,
    required this.uniqueKey,
  });

  GalleryGridState copyWith(
      {int? page,
      List<Post>? posts,
      bool? loading,
      bool? refreshing,
      String? tags,
      GalleryType? queryType,
      QueryParams? params,
      int? currentDetailIndex,
      String? uniqueKey}) {
    return GalleryGridState(
      posts: posts ?? this.posts,
      refreshing: refreshing ?? this.refreshing,
      loading: loading ?? this.loading,
      queryType: queryType ?? this.queryType,
      params: params ?? this.params,
      uniqueKey: uniqueKey ?? this.uniqueKey,
      currentDetailIndex: currentDetailIndex ?? this.currentDetailIndex,
    );
  }

  @override
  List<Object> get props => [
        posts,
        loading,
        refreshing,
        uniqueKey,
        queryType,
        params,
        currentDetailIndex
      ];
}
