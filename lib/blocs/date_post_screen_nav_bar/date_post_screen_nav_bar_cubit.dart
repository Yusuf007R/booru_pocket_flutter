import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/utils/date_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_post_screen_nav_bar_cubit.freezed.dart';
part 'date_post_screen_nav_bar_cubit.g.dart';
part 'date_post_screen_nav_bar_state.dart';

class DatePostScreenNavbarCubit extends Cubit<DatePostScreenNavbarState> {
  QueryParamsCubit queryParamsCubit;
  GalleryGridBloc galleryGridBloc;
  DatePostScreenNavbarCubit({
    required this.queryParamsCubit,
    required this.galleryGridBloc,
    required DatePostType type,
  }) : super(
          DatePostScreenNavbarState(
            queryParams: const QueryParams.post(),
            date: DateTime.now(),
            type: type,
          ),
        );

  void setDate(DateTime date) => emit(state.copyWith(date: date));

  void setScale(ScaleType scale) => emit(state.copyWith(scale: scale));

  @override
  void onChange(Change<DatePostScreenNavbarState> change) {
    super.onChange(change);
    if (change.currentState == change.nextState) return;
    galleryGridBloc.add(PostsFetched(shouldReset: true));
    loadQueryParams(customState: change.nextState);
  }

  void loadQueryParams({DatePostScreenNavbarState? customState}) {
    final currentState = customState ?? state;
    final params = queryParamsCubit.state.queryParams;
    if (params.type != QueryParamsPostType.datePost) return;
    final dateTag = _getDateTag(currentState.scale, currentState.date);
    final filterTag = currentState.type == DatePostType.popular
        ? 'order:score'
        : 'order:curated';
    String tags = "$dateTag $filterTag";
    queryParamsCubit.updateQueryParams(params.copyWith(tags: tags));
  }

  String _getDateTag(ScaleType scale, DateTime date) {
    if (scale == ScaleType.day) return "date:${date.yyyyMMdd()}";
    final isWeekly = scale == ScaleType.week;
    DateTime minDate = isWeekly ? date.startOfWeek() : date.startOfMonth();
    DateTime maxDate = isWeekly ? minDate.endOfWeek() : minDate.endOfMonth();
    return "date:${minDate.yyyyMMdd}..${maxDate.yyyyMMdd}";
  }
}
