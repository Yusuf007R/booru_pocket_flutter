import 'package:bloc/bloc.dart';
import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/services/locator_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/repositories/danbooru.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_grid_event.dart';
part 'gallery_grid_state.dart';

part 'gallery_grid_bloc.freezed.dart';
part 'gallery_grid_bloc.g.dart';

class GalleryGridBloc extends Bloc<GalleryGridEvent, GalleryGridState> {
  final DanbooruRepository repository = locator<DanbooruRepository>();
  final QueryParamsCubit queryParamsCubit;
  final DanbooruAuthCubit danbooruAuthCubit;

  GalleryGridBloc({
    required this.queryParamsCubit,
    required this.danbooruAuthCubit,
  }) : super(
          GalleryGridState(
            uniqueKey: UniqueKey().toString(),
          ),
        ) {
    on<PostsFetched>((event, emit) async {
      if (state.gridStatus == GridStatus.fetching) return;

      emit(state.copyWith(gridStatus: GridStatus.fetching));
      await verifyUser();
      if (event.shouldReset) {
        queryParamsCubit.resetPage();
        emit(state.copyWith(posts: const []));
      }
      print('fetching ${queryParamsCubit.state.queryParams.page}');
      List<Post> posts = await _fetchPosts();
      final mergedPosts = List<Post>.from(state.posts)
        ..addAll(posts)
        ..toSet()
        ..toList();
      GalleryGridState stateCopy =
          state.copyWith(posts: mergedPosts, gridStatus: GridStatus.idle);
      if (!queryParamsCubit.isClosed) queryParamsCubit.incrementPage();
      emit(stateCopy);
    });

    on<PostsRefreshed>((event, emit) async {
      if (state.gridStatus == GridStatus.refreshing) return;
      emit(state.copyWith(gridStatus: GridStatus.refreshing));
      await verifyUser();
      emit(state.copyWith(posts: const []));
      queryParamsCubit.resetPage();
      List<Post> posts = await _fetchPosts();

      GalleryGridState stateCopy =
          state.copyWith(posts: posts, gridStatus: GridStatus.idle);
      if (!queryParamsCubit.isClosed) queryParamsCubit.incrementPage();
      emit(stateCopy);
    });

    on<PostSelectedToggled>((event, emit) async {
      final isSelected = state.selectedPosts.contains(event.postId);
      if (isSelected) {
        emit(
          state.copyWith(
            selectedPosts: state.selectedPosts
                .where((element) => element != event.postId)
                .toList(),
          ),
        );
        return;
      }

      emit(state
          .copyWith(selectedPosts: [...state.selectedPosts, event.postId]));
    });

    on<SetPostSelected>((event, emit) async {
      emit(state.copyWith(selectedPosts: event.selectedPosts));
    });
  }

  Future<void> verifyUser() async {
    if (danbooruAuthCubit.state.user is UserAuthenticating) {
      await danbooruAuthCubit.stream
          .firstWhere((state) => state.user is! UserAuthenticating);
    }
  }

  _fetchPosts() async {
    final queryParams = queryParamsCubit.state.queryParams;
    return queryParams.map(
      post: (params) async {
        return await repository.getPosts(
          queryParamsCubit.queryParams,
        );
      },
    );
  }
}
