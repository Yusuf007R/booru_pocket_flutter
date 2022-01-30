import 'package:auto_route/annotations.dart';
import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_grid_event.dart';
part 'gallery_grid_state.dart';

part 'gallery_grid_bloc.freezed.dart';
part 'gallery_grid_bloc.g.dart';

class GalleryGridBloc extends Bloc<GalleryGridEvent, GalleryGridState> {
  final DanbooruRepository repository = locator<DanbooruRepository>();
  final QueryParamsCubit queryParamsCubit;

  GalleryGridBloc({required this.queryParamsCubit})
      : super(
          GalleryGridState(
            uniqueKey: UniqueKey().toString(),
          ),
        ) {
    on<PostsFetched>((event, emit) async {
      if (state.loading) return;
      print('fetching ${queryParamsCubit.state.queryParams.page}');
      emit(state.copyWith(loading: true));
      List<Post> posts = await _fetchPosts();
      GalleryGridState stateCopy = state.copyWith(
        posts: [...state.posts, ...posts],
        loading: false,
      );
      if (!queryParamsCubit.isClosed) queryParamsCubit.incrementPage();
      emit(stateCopy);
    }, transformer: droppable());

    on<PostsRefreshed>((event, emit) async {
      if (state.refreshing) return;
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
      if (!queryParamsCubit.isClosed) queryParamsCubit.incrementPage();
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
