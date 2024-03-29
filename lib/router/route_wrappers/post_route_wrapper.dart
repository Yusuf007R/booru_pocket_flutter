import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/date_post_screen_nav_bar_cubit/date_post_screen_nav_bar_cubit.dart';
import 'package:BooruPocket/blocs/gallery_grid_cubit/gallery_grid_cubit.dart';
import 'package:BooruPocket/blocs/post_screen_nav_bar_cubit/post_screen_nav_bar_cubit.dart';
import 'package:BooruPocket/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/queryparams/queryparams.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/screens/post_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

@RoutePage()
class PostRouteWrapper extends StatelessWidget {
  final String inputTextValue;
  final PostScreenType postScreenType;
  final String strictTag;

  const PostRouteWrapper({
    super.key,
    this.inputTextValue = '',
    this.postScreenType = PostScreenType.gallery,
    this.strictTag = '',
  });
  @override
  Widget build(BuildContext context) {
    final danbooruAuthCubit = context.read<DanbooruAuthCubit>();
    final user = danbooruAuthCubit.state.user;
    String? customStrictTag;
    if (user is UserAuthenticated) {
      if (postScreenType == PostScreenType.favorites) {
        customStrictTag = "ordfav:${user.name}";
      }
      if (postScreenType == PostScreenType.user) {
        customStrictTag = 'user:${user.name}';
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
              strictTag: customStrictTag ?? strictTag,
              settingsCubit: context.read<SettingsCubit>(),
              queryParams: QueryParams.post(
                tags: inputTextValue,
                type: isDatePostScreen
                    ? QueryParamsPostType.datePost
                    : QueryParamsPostType.post,
              ),
            ),
          ),
          BlocProvider(
            create: (context) => GalleryGridCubit(
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
                galleryGridCubit: BlocProvider.of<GalleryGridCubit>(context),
              )..loadQueryParams(),
              lazy: false,
            ),
          if (!isDatePostScreen)
            BlocProvider(
              create: (context) => PostScreenNavbarCubit(
                queryParamsCubit: BlocProvider.of<QueryParamsCubit>(context),
                galleryGridCubit: BlocProvider.of<GalleryGridCubit>(context),
              ),
            ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
