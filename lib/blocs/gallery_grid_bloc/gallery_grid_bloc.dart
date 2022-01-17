import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booru_pocket_flutter/blocs/popular_screen_nav_bar/popular_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_grid_event.dart';
part 'gallery_grid_state.dart';

part 'gallery_grid_bloc.freezed.dart';
part 'gallery_grid_bloc.g.dart';

class GalleryGridBloc extends Bloc<GalleryGridEvent, GalleryGridState> {
  final DanbooruRepository repository;
  final QueryParamsCubit queryParamsCubit;

  GalleryGridBloc({required this.repository, required this.queryParamsCubit})
      : super(GalleryGridState(
          uniqueKey: UniqueKey().toString(),
        )) {
    on<PostsFetched>((event, emit) async {
      if (state.loading) return;
      emit(state.copyWith(loading: true));
      List<Post> posts = await _fetchPosts();
      GalleryGridState stateCopy = state.copyWith(
        posts: [...state.posts, ...posts],
        loading: false,
      );
      queryParamsCubit.incrementPage();
      emit(stateCopy);
    });

    on<PostsRefreshed>((event, emit) async {
      emit(state.copyWith(
        posts: const [],
        refreshing: true,
      ));
      queryParamsCubit.resetPage();
      List<Post> posts = await _fetchPosts();
      GalleryGridState stateCopy = state.copyWith(
        posts: posts,
        refreshing: false,
      );
      queryParamsCubit.incrementPage();
      emit(stateCopy);
    });

    on<CurrentDetailIndexChanged>((event, emit) {
      emit(state.copyWith(currentDetailIndex: event.currentDetailIndex));
    });
  }

  _fetchPosts() async {
    final queryParams = queryParamsCubit.state.queryParams;

    return queryParams.map(
        post: (params) async {
          return await repository.getPosts(
            params,
          );
        },
        popular: (params) async {
          return await repository.getPopularPosts(
            params,
          );
        },
        recommended: (params) async {});
  }
}
