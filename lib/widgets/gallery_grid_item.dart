import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class GalleryGridItem extends StatefulWidget {
  const GalleryGridItem({
    Key? key,
    required this.width,
    required this.index,
  }) : super(key: key);
  final double width;

  final int index;

  @override
  State<GalleryGridItem> createState() => _GalleryGridItemState();
}

class _GalleryGridItemState extends State<GalleryGridItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (previous, current) {
        if (previous.gridRoundedCorners != current.gridRoundedCorners) {
          return true;
        }
        if (previous.gridImageQuality != current.gridImageQuality) {
          return true;
        }
        if (previous.gridType != current.gridType) {
          return true;
        }
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

            final Color baseColor = Colors.grey.shade400;
            final Color highlightColor = Colors.grey.shade100;

            return SizedBox(
              height: height,
              width: widget.width,
              child: GestureDetector(
                onLongPress: () {
                  Feedback.forTap(context);
                  Feedback.forLongPress(context);

                  bloc.add(PostSelectedToggled(postId: post.id));
                  return;
                },
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
                          settingState.gridRoundedCorners ? 10 : 0),
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
                            child: ExtendedImage.network(
                              post.getImage(settingState.gridImageQuality),
                              fit: BoxFit.cover,
                              cache: true,
                              loadStateChanged: (ExtendedImageState state) {
                                switch (state.extendedImageLoadState) {
                                  case LoadState.loading:
                                    return Shimmer(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: <Color>[
                                          baseColor,
                                          baseColor,
                                          highlightColor,
                                          baseColor,
                                          baseColor
                                        ],
                                        stops: const <double>[
                                          0.0,
                                          0.35,
                                          0.5,
                                          0.65,
                                          1.0,
                                        ],
                                      ),
                                      child: Container(
                                        height: height,
                                        width: widget.width,
                                        color: Colors.black,
                                      ),
                                    );
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
                                    Icon(
                                      post.isVideo
                                          ? Icons.play_arrow_rounded
                                          : Icons.image,
                                      size: 18,
                                    ),
                                    if (post.haveAudio)
                                      const Icon(
                                        Icons.volume_up,
                                        size: 15,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          )
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
  }
}
