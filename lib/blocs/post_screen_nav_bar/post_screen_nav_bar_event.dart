part of 'post_screen_nav_bar_bloc.dart';

@immutable
abstract class PostScreenNavBarEvent {}

class AutocompleteFetched extends PostScreenNavBarEvent {
  final String query;
  AutocompleteFetched({required this.query});
}

class AutocompletesCleared extends PostScreenNavBarEvent {}

class TextFieldSubmited extends PostScreenNavBarEvent {}

class TextFieldUpdated extends PostScreenNavBarEvent {
  final String value;
  TextFieldUpdated({required this.value});
}
