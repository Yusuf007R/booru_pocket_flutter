import 'package:bloc/bloc.dart';
import 'package:BooruPocket/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:BooruPocket/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:BooruPocket/models/api/autocomplete/autocomplete.dart';
import 'package:BooruPocket/models/api/queryparams/queryparams.dart';
import 'package:BooruPocket/repositories/danbooru.dart';
import 'package:BooruPocket/services/locator_service.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_screen_nav_bar_state.dart';

part 'post_screen_nav_bar_cubit.g.dart';
part 'post_screen_nav_bar_cubit.freezed.dart';

class PostScreenNavbarCubit extends Cubit<PostScreenNavBarState> {
  final DanbooruRepository repository = locator<DanbooruRepository>();
  final QueryParamsCubit queryParamsCubit;
  final GalleryGridBloc galleryGridBloc;
  PostScreenNavbarCubit(
      {required this.queryParamsCubit, required this.galleryGridBloc})
      : super(
          PostScreenNavBarState(),
        );

  void onTextFieldUpdated(String value) {
    final params = queryParamsCubit.state.queryParams;
    if (params is PostParams) {
      if (params.tags == value) return;
      queryParamsCubit.updateQueryParams(params.copyWith(tags: value));
      if (value.isEmpty) return clearAutoComplete();
      fetchAutoComplete(value);
    }
  }

  void onTextFieldSubmitted() {
    galleryGridBloc.add(PostsFetched(shouldReset: true));
  }

  void fetchAutoComplete(String value) async {
    String queryCopy = value;
    final int firstIndex = queryCopy.lastIndexOf(' ');
    if (firstIndex > 1) {
      queryCopy = queryCopy.substring(firstIndex, queryCopy.length).trim();
    }
    List<AutoComplete> autoCompletes =
        await repository.getAutoComplete(queryCopy);
    final params = queryParamsCubit.state.queryParams;
    if (params is PostParams) {
      if (params.tags.isEmpty) return clearAutoComplete();
      emit(state.copyWith(autoCompletes: autoCompletes));
      return;
    }
  }

  void clearAutoComplete() {
    if (state.autoCompletes.isEmpty) return;
    emit(state.copyWith(autoCompletes: []));
  }
}
