import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/models/api/autocomplete.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'post_screen_nav_bar_event.dart';
part 'post_screen_nav_bar_state.dart';

class PostScreenNavBarBloc
    extends Bloc<PostScreenNavBarEvent, PostScreenNavBarState> {
  final GalleryGridBlocBloc galleryGridBloc;
  PostScreenNavBarBloc({required this.galleryGridBloc})
      : super(PostScreenNavBarState(textFieldValue: '')) {
    on<AutocompleteFetched>((event, emit) async {
      final String query = event.query;
      String queryCopy = query;
      final int firstIndex = queryCopy.lastIndexOf(' ');
      if (firstIndex > 1) {
        queryCopy = queryCopy.substring(firstIndex, queryCopy.length).trim();
      }
      List<AutoComplete> autoCompletes =
          await state.respository.getAutoComplete(queryCopy);
      emit(state.copyWith(autoCompletes: autoCompletes));
    });
    on<AutocompletesCleared>((event, emit) {
      emit(state.copyWith(autoCompletes: []));
    });
    on<TextFieldUpdated>((event, emit) {
      if (state.textFieldValue == event.value) return;
      emit(state.copyWith(textFieldValue: event.value));
    });
    on<TextFieldSubmited>((event, emit) {
      galleryGridBloc.add(PostsRefreshed());
    });
  }

  @override
  void onTransition(
      Transition<PostScreenNavBarEvent, PostScreenNavBarState> transition) {
    super.onTransition(transition);
    if (transition.event is TextFieldUpdated) {
      if (transition.currentState.textFieldValue.isEmpty) {
        return add(AutocompletesCleared());
      }
      final String nextFieldValue = transition.nextState.textFieldValue;
      add(AutocompleteFetched(query: nextFieldValue));
      galleryGridBloc.add(TagsUpdated(tags: nextFieldValue));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
