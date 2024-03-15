import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/repositories/danbooru.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'gallery_grid_cubit.freezed.dart';
part 'gallery_grid_cubit_state.dart';

class GalleryGridCubit extends Cubit<GalleryGridState> {
  final repository = locator<DanbooruRepository>();
  final QueryParamsCubit queryParamsCubit;
  final DanbooruAuthCubit danbooruAuthCubit;

  GalleryGridCubit({
    required this.queryParamsCubit,
    required this.danbooruAuthCubit,
  }) : super(GalleryGridState(uniqueKey: UniqueKey().toString()));

  fetchPosts({bool shouldReset = false}) async {
    if (state.gridStatus == GridStatus.fetching) return;

    emit(state.copyWith(gridStatus: GridStatus.fetching));
    await _verifyUser();
    if (shouldReset) {
      queryParamsCubit.resetPage();
      emit(state.copyWith(posts: const []));
    }
    // ignore: avoid_print
    print('fetching ${queryParamsCubit.state.queryParams.page}');
    final posts = await _fetchPosts();
    final mergedPosts = List<Post>.from(state.posts)
      ..addAll(posts)
      ..toSet()
      ..toList();

    GalleryGridState stateCopy =
        state.copyWith(posts: mergedPosts, gridStatus: GridStatus.idle);
    if (!queryParamsCubit.isClosed) queryParamsCubit.incrementPage();
    emit(stateCopy);
  }

  refreshPosts() async {
    if (state.gridStatus == GridStatus.refreshing) return;
    emit(state.copyWith(gridStatus: GridStatus.refreshing));
    await _verifyUser();
    emit(state.copyWith(posts: const []));
    queryParamsCubit.resetPage();
    final posts = await _fetchPosts();

    GalleryGridState stateCopy =
        state.copyWith(posts: posts, gridStatus: GridStatus.idle);
    if (!queryParamsCubit.isClosed) queryParamsCubit.incrementPage();
    emit(stateCopy);
  }

  selectPost(int postId) {
    final isSelected = state.selectedPosts.contains(postId);
    if (isSelected) {
      emit(
        state.copyWith(
          selectedPosts: state.selectedPosts
              .where((element) => element != postId)
              .toList(),
        ),
      );
      return;
    }
    emit(
      state.copyWith(selectedPosts: [...state.selectedPosts, postId]),
    );
  }

  setPostSelected(List<int> selectedPosts) {
    emit(state.copyWith(selectedPosts: selectedPosts));
  }

  Future<List<Post>> _fetchPosts() async {
    final queryParams = queryParamsCubit.state.queryParams;
    final user = danbooruAuthCubit.state.user;
    if (user is UserAuthenticating) {
      Sentry.captureMessage(
        "Trying to fetch posts while user is authenticating",
        level: SentryLevel.error,
      );
    }
    return queryParams.map(
      post: (params) async {
        return await repository.getPosts(queryParamsCubit.queryParams, user);
      },
    );
  }

  Future<void> _verifyUser() async {
    if (danbooruAuthCubit.state.user is UserAuthenticating) {
      await danbooruAuthCubit.stream
          .firstWhere((state) => state.user is! UserAuthenticating);
    }
  }
}
