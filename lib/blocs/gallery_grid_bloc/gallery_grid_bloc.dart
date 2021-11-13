import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/models/api/post.dart';
import 'package:booru_pocket_flutter/models/api/queryparams.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'gallery_grid_event.dart';
part 'gallery_grid_state.dart';

class GalleryGridBloc extends Bloc<GalleryGridEvent, GalleryGridState> {
  final DanbooruRepository repository;
  GalleryGridBloc({required this.repository})
      : super(GalleryGridState(uniqueKey: UniqueKey().toString())) {
    on<PostsFetched>((event, emit) async {
      if (state.loading) return;
      emit(state.copyWith(loading: true));
      print("fetching ${state.params.page}");
      List<Post> posts = await repository.getPosts(
        state.params.toMap(state.queryType),
      );
      GalleryGridState stateCopy = state.copyWith(
        posts: [...state.posts, ...posts],
        params: state.params.copyWith(page: state.params.page + 1),
        loading: false,
      );
      emit(stateCopy);
    });

    on<PostsRefreshed>((event, emit) async {
      emit(state.copyWith(
        params: state.params.copyWith(page: 1),
        posts: const [],
        refreshing: true,
      ));
      print("fetching ${state.params.page}");
      List<Post> posts = await repository.getPosts(
        state.params.toMap(state.queryType),
      );
      GalleryGridState stateCopy = state.copyWith(
        posts: posts,
        refreshing: false,
        params: state.params.copyWith(page: state.params.page + 1),
      );
      emit(stateCopy);
    });

    on<ParamsUpdated>((event, emit) {
      emit(state.copyWith(params: event.params));
    });

    on<GalleryTypeChanged>((event, emit) {
      emit(state.copyWith(queryType: event.queryType));
    });

    on<CurrentDetailIndexChanged>((event, emit) {
      emit(state.copyWith(currentDetailIndex: event.currentDetailIndex));
    });
  }
}
