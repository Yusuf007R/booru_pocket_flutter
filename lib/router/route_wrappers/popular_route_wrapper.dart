import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/popular_screen_nav_bar/popular_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularRouteWrapper extends StatelessWidget {
  const PopularRouteWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => QueryParamsCubit(
            queryParams: QueryParams.popular(
              date: DateTime.now(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => GalleryGridBloc(
            queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
          ),
        ),
        BlocProvider(
          create: (context) => PopularScreenNavbarCubit(
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
              galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context)),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
