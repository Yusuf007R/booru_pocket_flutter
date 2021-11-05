import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/models/api/post.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'gallery_grid_event.dart';
part 'gallery_grid_state.dart';

class GalleryGridBlocBloc
    extends Bloc<GalleryGridBlocEvent, GalleryGridBlocState> {
  final DanbooruRespository repository;
  GalleryGridBlocBloc({required this.repository})
      : super(GalleryGridBlocState()) {
    on<PostsFetched>((event, emit) async {
      if (state.loading) return;
      emit(state.copyWith(loading: true));
      print("fetching ${state.page}");
      List<Post> posts = await repository.getPosts(
          page: state.page, limit: 40, tags: state.tags);
      GalleryGridBlocState stateCopy = state.copyWith(
        posts: [...state.posts, ...posts],
        page: state.page + 1,
        loading: false,
      );
      emit(stateCopy);
    });
    on<PostsRefreshed>((event, emit) async {
      print(state.tags);
      emit(state.copyWith(page: 1, posts: const [], refreshing: true));
      print("fetching ${state.page}");
      List<Post> posts = await repository.getPosts(
          page: state.page, limit: 40, tags: state.tags);
      GalleryGridBlocState stateCopy =
          state.copyWith(page: state.page + 1, posts: posts, refreshing: false);
      emit(stateCopy);
    });
    on<TagsUpdated>((event, emit) {
      print(event.tags);
      emit(state.copyWith(tags: event.tags));
    });
  }
}
