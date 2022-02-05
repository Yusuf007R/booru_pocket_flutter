part of 'post_detail_screen_cubit_cubit.dart';

@freezed
class PostDetailScreenCubitState with _$PostDetailScreenCubitState {
  factory PostDetailScreenCubitState(
      {@Default(false) bool willPop,
      @Default({}) Map<int, bool> maxQuality,
      @Default(false) bool loading,
      required int currentPostIndex,
      @Default(true) bool showMenu}) = _PostDetailScreenCubitState;
}
