import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/services/image_downloader_service.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:booru_pocket_flutter/widgets/post_detail_bottom_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:collection/collection.dart';

class PostDetailAppBar extends StatelessWidget with PreferredSizeWidget {
  const PostDetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      builder: (context, galleryState) {
        return BlocBuilder<PostDetailScreenCubitCubit,
            PostDetailScreenCubitState>(
          builder: (context, state) {
            final Post post = galleryState.posts[state.currentPostIndex];
            return Visibility(
              visible: post.isVideo || state.showMenu,
              child: AppBar(
                elevation: 20,
                shadowColor: Colors.black.withOpacity(0.35),
                title: Text("Post #${post.id}"),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () => {
                    AutoRouter.of(context).pop(),
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                actions: [
                  PopupMenuButton(
                    tooltip: 'More options',
                    icon: const Icon(Icons.more_vert),
                    itemBuilder: (BuildContext context) => [
                      popUpItem(
                        icon: Icons.save_alt_outlined,
                        text: "Save",
                        onTap: () {
                          locator<ImageDownloaderService>().downloadImages(
                            [post],
                          );
                        },
                      ),
                      popUpItem(
                        icon: Icons.share,
                        text: 'Share',
                        onTap: () {
                          locator<ImageDownloaderService>().downloadShareImage(
                            [post],
                          );
                        },
                      ),
                      popUpItem(
                        icon: Icons.open_in_browser,
                        text: 'Open in browser',
                        onTap: () async {
                          String url =
                              'https://danbooru.donmai.us/posts/${post.id}';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            print('Could not launch $url');
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  PopupMenuItem<dynamic> popUpItem({
    required Function() onTap,
    required String text,
    required IconData icon,
  }) {
    return PopupMenuItem(
      onTap: onTap,
      padding: const EdgeInsets.all(0),
      child: ListTile(
        minLeadingWidth: 0,
        leading: Icon(icon),
        title: Text(text, style: const TextStyle(fontSize: 15)),
      ),
    );
  }
}

class PostDetailBottomBar extends StatelessWidget {
  const PostDetailBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settingsState) {
        return BlocBuilder<DanbooruAuthCubit, DanbooruAuthState>(
          buildWhen: (previous, current) {
            return previous.favoritePostIds.hashCode !=
                current.favoritePostIds.hashCode;
          },
          builder: (context, authState) {
            final favoritePostIds = authState.favoritePostIds;

            return BlocBuilder<PostDetailScreenCubitCubit,
                PostDetailScreenCubitState>(
              builder: (context, state) {
                final maxQuality = state.maxQuality[state.currentPostIndex];
                final post = context
                    .read<GalleryGridBloc>()
                    .state
                    .posts[state.currentPostIndex];
                final isFavorite = favoritePostIds.binarySearch(
                        post.id, (a, b) => a.compareTo(b)) >
                    0;
                return Visibility(
                  visible: post.isVideo || state.showMenu,
                  child: SafeArea(
                    child: Material(
                      color: Colors.transparent,
                      elevation: 20,
                      shadowColor: Colors.black.withOpacity(0.35),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            if (settingsState.detailPageQuality !=
                                ImageQuality.max)
                              IconButton(
                                  tooltip: 'Toggle quality',
                                  icon: Icon(
                                    maxQuality == true
                                        ? Icons.high_quality
                                        : Icons.high_quality_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    context
                                        .read<PostDetailScreenCubitCubit>()
                                        .toggleMaxQuality(
                                            state.currentPostIndex);
                                  }),
                            IconButton(
                                tooltip: 'Show info',
                                icon: const Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                ),
                                onPressed: () async {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    builder: (context) {
                                      return InfoBottomSheet(
                                        post: post,
                                      );
                                    },
                                  );
                                }),
                            IconButton(
                                tooltip: 'Show tags',
                                icon: const Icon(
                                  MdiIcons.tag,
                                  color: Colors.white,
                                ),
                                onPressed: () async {
                                  final detailCubit = context
                                      .read<PostDetailScreenCubitCubit>();
                                  showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) {
                                        return BlocProvider.value(
                                          value: detailCubit,
                                          child: TagBottomSheet(post: post),
                                        );
                                      }).whenComplete(() async {
                                    await Future.delayed(
                                      const Duration(milliseconds: 20),
                                    );
                                    detailCubit.clearSelectedTags();
                                  });
                                }),
                            IconButton(
                              tooltip: 'Add to favorites',
                              icon: Icon(
                                isFavorite
                                    ? MdiIcons.heart
                                    : MdiIcons.heartOutline,
                                color: isFavorite
                                    ? Colors.pinkAccent
                                    : Colors.white,
                              ),
                              onPressed: () {
                                context
                                    .read<GalleryGridBloc>()
                                    .add(PostLiked(postId: post.id));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
