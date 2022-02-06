import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_screen_cubit_state.dart';
part 'post_detail_screen_cubit_cubit.freezed.dart';

class PostDetailScreenCubitCubit extends Cubit<PostDetailScreenCubitState> {
  PostDetailScreenCubitCubit({required int initialIndex})
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
}
