import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/services/image_downloader_service.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

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
              visible: state.showMenu,
              child: AppBar(
                shadowColor: Colors.black.withOpacity(0.3),
                title: Text("Post #${post.id}"),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                    onPressed: () => {
                          AutoRouter.of(context).pop(),
                        },
                    icon: const Icon(Icons.arrow_back)),
                actions: [
                  PopupMenuButton(
                    tooltip: 'More options',
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.more_vert),
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        onTap: () => locator<ImageDownloaderService>()
                            .downloadImage(post),
                        child: const ListTile(
                          leading: Icon(
                            Icons.save_outlined,
                            color: Colors.white,
                          ),
                          title: Text('Save'),
                        ),
                      ),
                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        onTap: () async {
                          locator<ImageDownloaderService>().downloadShareImage(
                            post,
                          );
                        },
                        child: const ListTile(
                          leading: Icon(Icons.share, color: Colors.white),
                          title: Text('Share'),
                        ),
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
  const PostDetailBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      builder: (context, state) {
        final maxQuality = state.maxQuality[state.currentPostIndex];
        return Visibility(
          visible: state.showMenu,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  onPressed: () async {}),
              IconButton(
                  icon: Icon(
                    maxQuality == true
                        ? Icons.high_quality
                        : Icons.high_quality_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    context
                        .read<PostDetailScreenCubitCubit>()
                        .toggleMaxQuality(state.currentPostIndex);
                  }),
              IconButton(
                  icon: const Icon(
                    MdiIcons.heartOutline,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ],
          ),
        );
      },
    );
  }
}
