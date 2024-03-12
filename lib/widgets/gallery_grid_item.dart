import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:BooruPocket/widgets/danbooru_image.dart';
import 'package:BooruPocket/widgets/pop_up_item.dart';
import 'package:BooruPocket/widgets/shimmer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../services/image_downloader_service.dart';

class GalleryGridItem extends StatefulWidget {
  final double width;
  final int index;

  const GalleryGridItem({
    super.key,
    required this.width,
    required this.index,
  });

  @override
  State<GalleryGridItem> createState() => _GalleryGridItemState();
}

class _GalleryGridItemState extends State<GalleryGridItem> {
  Offset _position = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (previous, current) {
        if (previous.gridRoundedCorners != current.gridRoundedCorners) {
          return true;
        }
        if (previous.gridImageQuality != current.gridImageQuality) return true;
        if (previous.gridType != current.gridType) return true;
        return false;
      },
      builder: (context, settingState) {
        return BlocBuilder<GalleryGridBloc, GalleryGridState>(
          builder: (context, state) {
            final bloc = BlocProvider.of<GalleryGridBloc>(context);
            Post post = state.posts[widget.index];

            double aspectRatio = post.imageWidth / post.imageHeight;

            double height = settingState.gridType == GridType.square
                ? widget.width
                : widget.width / aspectRatio;

            bool isSelected = state.selectedPosts.contains(post.id);

            return BlocBuilder<DanbooruAuthCubit, DanbooruAuthState>(
              builder: (context, danbooruAuthState) {
                final isFavorite =
                    context.read<DanbooruAuthCubit>().isPostFavorite(post);
                return SizedBox(
                  height: height,
                  width: widget.width,
                  child: GestureDetector(
                    onLongPress: () {
                      Feedback.forTap(context);
                      Feedback.forLongPress(context);

                      final itemsList = [
                        popUpItem(
                          text: 'Favorite',
                          icon: MdiIcons.heart,
                          iconColor: isFavorite ? Colors.pinkAccent : null,
                          onTap: () {
                            context
                                .read<DanbooruAuthCubit>()
                                .toggleFavoritePost(post);
                          },
                        ),
                        popUpItem(
                          text: 'Select',
                          icon: isSelected
                              ? Icons.check_box
                              : Icons.check_box_outlined,
                          onTap: () {
                            bloc.add(PostSelectedToggled(postId: post.id));
                          },
                        ),
                        popUpItem(
                          text: 'Share',
                          icon: Icons.share_outlined,
                          onTap: () {
                            locator<ImageDownloaderService>()
                                .downloadShareImage([post]);
                          },
                        ),
                        popUpItem(
                          text: 'Download',
                          icon: Icons.save_alt_outlined,
                          onTap: () {
                            locator<ImageDownloaderService>()
                                .downloadImages([post]);
                          },
                        ),
                      ];

                      final menuHeight = itemsList.fold(
                        0.0,
                        (previousValue, element) =>
                            (previousValue) + element.height,
                      );

                      final height = MediaQuery.of(context).size.height;
                      final bottomPadding = View.of(context).padding.bottom;

                      final RenderBox renderBox =
                          context.findRenderObject() as RenderBox;

                      final biggerBottomPadding = bottomPadding + menuHeight;
                      final top = (height - _position.dy) >= biggerBottomPadding
                          ? _position.dy
                          : _position.dy -
                              (biggerBottomPadding - bottomPadding);

                      final left = _position.dx;
                      final right = _position.dx + renderBox.size.width;

                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(
                          left,
                          top,
                          right,
                          0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        items: itemsList,
                      );
                    },
                    onTapDown: (details) => setState(() {
                      _position = details.globalPosition;
                    }),
                    onTap: () {
                      Feedback.forTap(context);
                      if (state.selectedPosts.isNotEmpty) {
                        Feedback.forLongPress(context);
                        bloc.add(PostSelectedToggled(postId: post.id));
                        return;
                      }
                      AutoRouter.of(context).push(
                        PostDetailRoute(
                          initialIndex: widget.index,
                          galleryGridBloc: bloc,
                        ),
                      );
                    },
                    child: Hero(
                      tag: "${state.uniqueKey}-${post.id}",
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            settingState.gridRoundedCorners ? 10 : 0,
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: isSelected ? 6 : 0,
                                  ),
                                ),
                                child: DanbooruImage(
                                  imageUrl: post
                                      .getImage(settingState.gridImageQuality),
                                  fit: BoxFit.cover,
                                  loadStateChanged: (ExtendedImageState state) {
                                    switch (state.extendedImageLoadState) {
                                      case LoadState.loading:
                                        return getShimmer(height, widget.width);
                                      case LoadState.completed:
                                        return null;
                                      case LoadState.failed:
                                        return const Icon(Icons.error);
                                    }
                                  },
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(1),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        if (isFavorite)
                                          Icon(
                                            MdiIcons.heart,
                                            size: 16,
                                            color: Colors.pinkAccent,
                                          ),
                                        Icon(
                                          post.isVideo
                                              ? Icons.play_arrow_rounded
                                              : Icons.image,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                        if (post.haveAudio)
                                          const Icon(
                                            Icons.volume_up,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
