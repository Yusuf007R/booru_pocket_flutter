import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/gallery_grid_cubit/gallery_grid_cubit.dart';
import 'package:BooruPocket/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/services/image_downloader_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:BooruPocket/utils/launch_url.dart';
import 'package:BooruPocket/widgets/pop_up_item.dart';
import 'package:BooruPocket/widgets/post_detail_bottom_sheets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostDetailAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridCubit, GalleryGridState>(
      builder: (context, galleryState) {
        return BlocBuilder<PostDetailScreenCubitCubit,
            PostDetailScreenCubitState>(
          builder: (context, state) {
            final Post post = galleryState.posts[state.currentPostIndex];
            return Visibility(
              visible: post.isVideo || state.showMenu,
              child: AppBar(
                elevation: 20,
                shadowColor: Colors.black.withOpacity(0.6),
                title: Text("Post #${post.id}"),
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () => {
                    AutoRouter.of(context).pop(),
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
                actions: [
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    tooltip: 'More options',
                    icon: const Icon(Icons.more_vert, color: Colors.white),
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
                          launchStringUrl(
                            'https://danbooru.donmai.us/posts/${post.id}',
                          );
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
}

class PostDetailBottomBar extends StatelessWidget {
  const PostDetailBottomBar({super.key});

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
            final authCubit = context.read<DanbooruAuthCubit>();
            return BlocBuilder<PostDetailScreenCubitCubit,
                PostDetailScreenCubitState>(
              builder: (context, state) {
                final maxQuality = state.maxQuality[state.currentPostIndex];
                final post = context
                    .read<GalleryGridCubit>()
                    .state
                    .posts[state.currentPostIndex];
                final isFavorite = authCubit.isPostFavorite(post);
                return Visibility(
                  visible: post.isVideo || state.showMenu,
                  child: SafeArea(
                    child: Material(
                      color: Colors.transparent,
                      elevation: 20,
                      shadowColor: Colors.black.withOpacity(0.8),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(vertical: 15),
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
                                        state.currentPostIndex,
                                      );
                                },
                              ),
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
                              },
                            ),
                            IconButton(
                              tooltip: 'Show tags',
                              icon: Icon(
                                MdiIcons.tag,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                final detailCubit =
                                    context.read<PostDetailScreenCubitCubit>();
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) {
                                    return BlocProvider.value(
                                      value: detailCubit,
                                      child: TagBottomSheet(post: post),
                                    );
                                  },
                                ).whenComplete(() async {
                                  await Future.delayed(
                                    const Duration(milliseconds: 20),
                                  );
                                  detailCubit.clearSelectedTags();
                                });
                              },
                            ),
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
                                    .read<DanbooruAuthCubit>()
                                    .toggleFavoritePost(post);
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
