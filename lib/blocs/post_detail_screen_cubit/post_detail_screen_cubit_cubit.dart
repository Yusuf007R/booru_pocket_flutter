import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';

import 'package:booru_pocket_flutter/services/locator_service.dart';
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

  void toggleSelectedtag(String tag) {
    final isSelected = state.selectedTags.contains(tag);
    if (isSelected) {
      emit(state.copyWith(
          selectedTags:
              state.selectedTags.where((element) => element != tag).toList()));
      return;
    }
    emit(state.copyWith(selectedTags: [...state.selectedTags, tag]));
  }
}
