import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_screen_nav_bar_cubit.freezed.dart';
part 'popular_screen_nav_bar_cubit.g.dart';
part 'popular_screen_nav_bar_state.dart';

class PopularScreenNavbarCubit extends Cubit<PopularScreenNavBarState> {
  QueryParamsCubit queryParamsCubit;
  GalleryGridBloc galleryGridBloc;
  PopularScreenNavbarCubit(
      {required this.queryParamsCubit, required this.galleryGridBloc})
      : super(
          PopularScreenNavBarState(
            queryParams:
                QueryParams.popular(scale: ScaleType.day, date: DateTime.now()),
          ),
        );

  void setDate(DateTime date) {
    final params = queryParamsCubit.state.queryParams;
    if (params is PopularParams) {
      queryParamsCubit.updateQueryParams(
        params.copyWith(date: date),
      );
    }
    galleryGridBloc.add(PostsFetched(shouldReset: true));
  }

  void setScale(ScaleType scale) {
    final params = queryParamsCubit.state.queryParams;
    if (params is PopularParams) {
      queryParamsCubit.updateQueryParams(
        params.copyWith(scale: scale),
      );
    }
    galleryGridBloc.add(PostsFetched(shouldReset: true));
  }
}
