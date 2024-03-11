import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_screen_cubit_cubit.freezed.dart';
part 'post_detail_screen_cubit_state.dart';

class PostDetailScreenCubitCubit extends Cubit<PostDetailScreenCubitState> {
  PostDetailScreenCubitCubit({
    required int initialIndex,
  }) : super(PostDetailScreenCubitState(currentPostIndex: initialIndex));

  void clearSelectedTags() => emit(state.copyWith(selectedTags: []));

  void setCurrentPostIndex(int currentPostIndex) =>
      emit(state.copyWith(currentPostIndex: currentPostIndex));

  void setLoading(bool loading) => emit(state.copyWith(loading: loading));

  void toggleMaxQuality(int index) {
    Map<int, bool> newMap = Map.from(state.maxQuality);
    newMap[index] =
        state.maxQuality[state.currentPostIndex] == true ? false : true;
    emit(state.copyWith(maxQuality: newMap));
  }

  void toggleSelectedTag(String tag) {
    final isSelected = state.selectedTags.contains(tag);
    if (isSelected) {
      emit(
        state.copyWith(
          selectedTags:
              state.selectedTags.where((element) => element != tag).toList(),
        ),
      );
      return;
    }
    emit(state.copyWith(selectedTags: [...state.selectedTags, tag]));
  }

  void toggleShowMenu() => emit(state.copyWith(showMenu: !state.showMenu));

  void willPop() => emit(state.copyWith(showMenu: false, willPop: true));
}
