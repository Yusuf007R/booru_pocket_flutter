import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_bloc.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: RepositoryProvider(
      create: (context) => DanbooruRespository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GalleryGridBlocBloc(
                repository:
                    RepositoryProvider.of<DanbooruRespository>(context)),
          ),
          BlocProvider(
            create: (context) => PostScreenNavBarBloc(
                galleryGridBloc: BlocProvider.of<GalleryGridBlocBloc>(context)),
          ),
        ],
        child: const PostScreen(),
      ),
    ));
  }
}
