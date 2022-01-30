import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostRouteWrapper extends StatelessWidget {
  final String inputTextValue;
  final PostScreenType postScreenType;

  const PostRouteWrapper(
      {Key? key,
      this.inputTextValue = '',
      this.postScreenType = PostScreenType.gallery})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String? query;
    final danbooruAuthCubit = context.read<DanbooruAuthCubit>();
    if (postScreenType == PostScreenType.favorites) {
      final user = danbooruAuthCubit.state.user;
      if (user is UserAuthenticated) {
        query = 'ordfav:${user.name}';
      }
    }
    if (postScreenType == PostScreenType.user) {
      final user = danbooruAuthCubit.state.user;
      if (user is UserAuthenticated) {
        query = 'user:${user.name}';
      }
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => QueryParamsCubit(
            queryParams: QueryParams.post(tags: query ?? inputTextValue),
          ),
        ),
        BlocProvider(
          create: (context) => GalleryGridBloc(
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context)),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => PostScreenNavbarCubit(
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
              galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context)),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
