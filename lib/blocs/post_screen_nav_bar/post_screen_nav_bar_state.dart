part of 'post_screen_nav_bar_bloc.dart';

class PostScreenNavBarState extends Equatable {
  final List<AutoComplete> autoCompletes;
  final String textFieldValue;

  const PostScreenNavBarState({
    this.autoCompletes = const [],
    required this.textFieldValue,
  });

  PostScreenNavBarState copyWith(
      {List<AutoComplete>? autoCompletes, String? textFieldValue}) {
    return PostScreenNavBarState(
        autoCompletes: autoCompletes ?? this.autoCompletes,
        textFieldValue: textFieldValue ?? this.textFieldValue);
  }

  @override
  List<Object?> get props => [autoCompletes, textFieldValue];
}
