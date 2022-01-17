import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostRouteWrapper extends StatelessWidget {
  final String inputTextValue;
  const PostRouteWrapper({Key? key, this.inputTextValue = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => QueryParamsCubit(
            queryParams: QueryParams.post(tags: inputTextValue),
          ),
        ),
        BlocProvider(
          create: (context) => GalleryGridBloc(
              repository: RepositoryProvider.of<DanbooruRepository>(context),
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context)),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => PostScreenNavbarCubit(
              repository: RepositoryProvider.of<DanbooruRepository>(context),
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
              galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context)),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
