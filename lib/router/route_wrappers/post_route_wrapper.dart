import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../blocs/popular_screen_nav_bar/popular_screen_nav_bar_cubit.dart';

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
    return Provider(
      create: (_) => postScreenType,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => QueryParamsCubit(
              queryParams: postScreenType == PostScreenType.popular
                  ? QueryParams.popular(
                      date: DateTime.now(),
                    )
                  : QueryParams.post(tags: query ?? inputTextValue),
            ),
          ),
          BlocProvider(
            create: (context) => GalleryGridBloc(
              danbooruAuthCubit: BlocProvider.of<DanbooruAuthCubit>(context),
              queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
            ),
          ),
          if (postScreenType == PostScreenType.popular)
            BlocProvider(
              create: (context) => PopularScreenNavbarCubit(
                  queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
                  galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context)),
            ),
          if (postScreenType != PostScreenType.popular)
            BlocProvider(
              create: (context) => PostScreenNavbarCubit(
                  queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
                  galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context)),
            ),
        ],
        child: BlocBuilder<SettingsCubit, SettingsState>(
          buildWhen: (previous, current) =>
              previous.pageLimit != current.pageLimit ||
              previous.safeMode != current.safeMode,
          builder: (context, state) {
            GalleryGridBloc galleryGridBloc = context.read<GalleryGridBloc>();
            QueryParamsCubit queryParamsCubit =
                context.read<QueryParamsCubit>();
            DanbooruRepository danbooruRepository =
                locator<DanbooruRepository>();
            bool shouldfetch = false;
            if (queryParamsCubit.state.queryParams.limit != state.pageLimit) {
              queryParamsCubit.updateLimit(state.pageLimit);
              shouldfetch = true;
            }
            if (danbooruRepository.safeMode != state.safeMode) {
              danbooruRepository.toggleSafeMode();
              shouldfetch = true;
            }
            if (shouldfetch) {
              galleryGridBloc.add(PostsFetched(shouldReset: true));
            }
            return const AutoRouter();
          },
        ),
      ),
    );
  }
}
