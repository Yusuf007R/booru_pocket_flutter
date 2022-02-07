import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';

import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_screen_cubit_state.dart';
part 'post_detail_screen_cubit_cubit.freezed.dart';

class PostDetailScreenCubitCubit extends Cubit<PostDetailScreenCubitState> {
  final DanbooruAuthCubit danbooruAuthCubit;

  final DanbooruRepository repository = locator<DanbooruRepository>();
  PostDetailScreenCubitCubit(
      {required int initialIndex, required this.danbooruAuthCubit})
      : super(PostDetailScreenCubitState(currentPostIndex: initialIndex));

  void setCurrentPostIndex(int currentPostIndex) =>
      emit(state.copyWith(currentPostIndex: currentPostIndex));

  void toggleShowMenu() => emit(state.copyWith(showMenu: !state.showMenu));

  void setLoading(bool loading) => emit(state.copyWith(loading: loading));

  void willPop() => emit(state.copyWith(showMenu: false, willPop: true));

  void toggleMaxQuality(int index) {
    Map<int, bool> newMap = Map.from(state.maxQuality);
    newMap[index] =
        state.maxQuality[state.currentPostIndex] == true ? false : true;
    emit(state.copyWith(maxQuality: newMap));
  }

  void clearSelectedTags() => emit(state.copyWith(selectedTags: []));

  void addTag(String tag) {
    emit(state.copyWith(selectedTags: [...state.selectedTags, tag]));
  }

  void removeTag(String tag) {
    emit(state.copyWith(
        selectedTags:
            state.selectedTags.where((element) => element != tag).toList()));
  }

  Future<bool> setFavorite(int postId, bool isFavorite) async {
    final user = danbooruAuthCubit.state.user;
    if (user is UserNoAuthenticated) {
      locator<AppRouter>().navigate(const LoginRoute());
      return false;
    }
    final favoritesId = List<int>.from(danbooruAuthCubit.state.favoritePostIds);

    if (isFavorite) {
      try {
        favoritesId.remove(postId);
        danbooruAuthCubit.setFavorites(favoritesId);
        await repository.deleteFavorite(postId);
        return true;
      } on DioError catch (e) {
        print(e);
        if (e.response?.data?.message == 'That record was not found.') {
          return true;
        }
        favoritesId.add(postId);
        danbooruAuthCubit.setFavorites(favoritesId);
        return false;
      }
    }
    try {
      favoritesId.add(postId);
      danbooruAuthCubit.setFavorites(favoritesId);
      await repository.addFavorite(postId);
      return true;
    } catch (e) {
      print(e);
      favoritesId.remove(postId);
      danbooruAuthCubit.setFavorites(favoritesId);
      return false;
    }
  }
}
