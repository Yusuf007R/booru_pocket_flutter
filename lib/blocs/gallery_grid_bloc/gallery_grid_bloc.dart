import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../router/router.gr.dart';

part 'gallery_grid_event.dart';
part 'gallery_grid_state.dart';

part 'gallery_grid_bloc.freezed.dart';
part 'gallery_grid_bloc.g.dart';

class GalleryGridBloc extends Bloc<GalleryGridEvent, GalleryGridState> {
  final DanbooruRepository repository = locator<DanbooruRepository>();
  final QueryParamsCubit queryParamsCubit;
  final DanbooruAuthCubit danbooruAuthCubit;

  GalleryGridBloc(
      {required this.queryParamsCubit, required this.danbooruAuthCubit})
      : super(
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

    on<PostLiked>((event, emit) async {
      final user = danbooruAuthCubit.state.user;
      if (user is UserNoAuthenticated) {
        locator<AppRouter>().navigate(const LoginRoute());
        return;
      }
      final favoritesId =
          List<int>.from(danbooruAuthCubit.state.favoritePostIds);
      final isFavorite = favoritesId.contains(event.postId);
      if (isFavorite) {
        try {
          favoritesId.remove(event.postId);
          danbooruAuthCubit.setFavorites(favoritesId);
          await repository.deleteFavorite(event.postId);
          return;
        } on DioError catch (e) {
          print(e.response);
          if (e.response?.data['message'] == 'That record was not found.') {
            return;
          }
          favoritesId.add(event.postId);
          danbooruAuthCubit.setFavorites(favoritesId);
          return;
        }
      }
      try {
        favoritesId.add(event.postId);
        danbooruAuthCubit.setFavorites(favoritesId);
        await repository.addFavorite(event.postId);
        return;
      } on DioError catch (e) {
        print(e.message);
        favoritesId.remove(event.postId);
        danbooruAuthCubit.setFavorites(favoritesId);
        return;
      }
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
