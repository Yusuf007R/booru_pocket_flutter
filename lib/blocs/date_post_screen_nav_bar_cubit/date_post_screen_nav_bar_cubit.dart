import 'package:BooruPocket/blocs/gallery_grid_cubit/gallery_grid_cubit.dart';
import 'package:BooruPocket/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:BooruPocket/models/api/queryparams/queryparams.dart';
import 'package:BooruPocket/utils/date_extensions.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_post_screen_nav_bar_cubit.freezed.dart';
part 'date_post_screen_nav_bar_cubit.g.dart';
part 'date_post_screen_nav_bar_state.dart';

class DatePostScreenNavbarCubit extends Cubit<DatePostScreenNavbarState> {
  QueryParamsCubit queryParamsCubit;
  GalleryGridCubit galleryGridCubit;
  DatePostScreenNavbarCubit({
    required this.queryParamsCubit,
    required this.galleryGridCubit,
    required DatePostType type,
  }) : super(
          DatePostScreenNavbarState(
            queryParams: const QueryParams.post(),
            date: DateTime.now(),
            type: type,
          ),
        );

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

  @override
  void onChange(Change<DatePostScreenNavbarState> change) {
    super.onChange(change);
    if (change.currentState == change.nextState) return;
    galleryGridCubit.fetchPosts(shouldReset: true);
    loadQueryParams(customState: change.nextState);
  }

  void setDate(DateTime date) => emit(state.copyWith(date: date));

  void setScale(ScaleType scale) => emit(state.copyWith(scale: scale));

  String _getDateTag(ScaleType scale, DateTime date) {
    if (scale == ScaleType.day) return "date:${date.yyyyMMdd()}";
    final isWeekly = scale == ScaleType.week;
    DateTime minDate = isWeekly ? date.startOfWeek() : date.startOfMonth();
    DateTime maxDate = isWeekly ? minDate.endOfWeek() : minDate.endOfMonth();
    return "date:${minDate.yyyyMMdd()}..${maxDate.yyyyMMdd()}";
  }
}
