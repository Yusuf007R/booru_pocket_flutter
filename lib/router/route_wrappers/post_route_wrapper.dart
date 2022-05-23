import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/blocs/date_post_screen_nav_bar/date_post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

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
    final user = danbooruAuthCubit.state.user;
    if (user is UserAuthenticated) {
      if (postScreenType == PostScreenType.favorites) {
        query = " ordfav:${user.name}";
      }
      if (postScreenType == PostScreenType.user) {
        query = 'user:${user.name}';
      }
    }
    final isDatePostScreen = postScreenType == PostScreenType.curated ||
        postScreenType == PostScreenType.popular;

    return Provider(
      create: (_) => postScreenType,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => QueryParamsCubit(
              settingsCubit: context.read<SettingsCubit>(),
              queryParams: QueryParams.post(
                tags: query ?? inputTextValue,
                type: isDatePostScreen
                    ? QueryParamsPostType.datePost
                    : QueryParamsPostType.post,
              ),
            ),
          ),
          BlocProvider(
            create: (context) => GalleryGridBloc(
              danbooruAuthCubit: BlocProvider.of<DanbooruAuthCubit>(context),
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
            ),
          ),
          if (isDatePostScreen)
            BlocProvider(
              create: (context) => DatePostScreenNavbarCubit(
                type: DatePostType.values.firstWhere(
                  (element) => element.name == postScreenType.name,
                ),
                queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
                galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context),
              )..loadQueryParams(),
              lazy: false,
            ),
          if (!isDatePostScreen)
            BlocProvider(
              create: (context) => PostScreenNavbarCubit(
                  queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
                  galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context)),
            ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
