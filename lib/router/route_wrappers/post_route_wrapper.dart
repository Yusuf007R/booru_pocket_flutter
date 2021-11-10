import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_bloc.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostRouteWrapper extends StatelessWidget {
  const PostRouteWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DanbooruRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GalleryGridBloc(
              repository: RepositoryProvider.of<DanbooruRepository>(context),
            ),
          ),
          BlocProvider(
            create: (context) => PostScreenNavBarBloc(
              repository: RepositoryProvider.of<DanbooruRepository>(context),
              galleryGridBloc: BlocProvider.of<GalleryGridBloc>(context),
            ),
          ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
