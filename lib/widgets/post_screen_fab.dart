import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/services/image_downloader_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import '../router/router.gr.dart';
import '../services/locator_service.dart';

class PostScreenFAB extends StatelessWidget {
  const PostScreenFAB({
    Key? key,
    required ScrollController scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      builder: (context, state) {
        final isSelectedMode = state.selectedPosts.isNotEmpty;
        final bloc = context.read<GalleryGridBloc>();
        return ValueListenableBuilder(
          valueListenable: Provider.of<ValueNotifier<bool>>(context),
          builder: (context, bool value, child) {
            return SpeedDial(
              icon: Icons.menu,
              visible: isSelectedMode || value,
              children: isSelectedMode
                  ? [
                      SpeedDialChild(
                        child: const Icon(Icons.clear_all_rounded),
                        label: 'Clear Selected Post',
                        onTap: () {
                          bloc.add(SetPostSelected(selectedPosts: const []));
                        },
                      ),
                      SpeedDialChild(
                        child: const Icon(MdiIcons.heart),
                        label: 'Favorite',
                        onTap: () {
                          final posts = state.posts
                              .where((element) =>
                                  state.selectedPosts.contains(element.id))
                              .toSet()
                              .toList();
                          for (var post in posts) {
                            context
                                .read<DanbooruAuthCubit>()
                                .setFavoriteOn(post);
                          }
                        },
                      ),
                      SpeedDialChild(
                        child: const Icon(Icons.share_outlined),
                        label: 'Share',
                        onTap: () {
                          locator<ImageDownloaderService>().downloadShareImage(
                            state.posts
                                .where((element) =>
                                    state.selectedPosts.contains(element.id))
                                .toSet()
                                .toList(),
                          );
                        },
                      ),
                      SpeedDialChild(
                        child: const Icon(Icons.save_alt_outlined),
                        label: 'Download',
                        onTap: () {
                          locator<ImageDownloaderService>().downloadImages(
                            state.posts
                                .where((element) =>
                                    state.selectedPosts.contains(element.id))
                                .toSet()
                                .toList(),
                          );
                        },
                      ),
                    ]
                  : [
                      SpeedDialChild(
                        child: const Icon(Icons.arrow_upward),
                        label: 'Scroll to top',
                        onTap: () {
                          _scrollController.animateTo(
                            0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                      SpeedDialChild(
                        child: const Icon(Icons.home),
                        label: 'Go home',
                        onTap: () {
                          AutoRouter.of(context).navigate(const HomeRoute());
                        },
                      ),
                    ],
            );
          },
        );
      },
    );
  }
}