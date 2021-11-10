import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/models/api/post.dart';
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
  bool shouldClearMemory = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      buildWhen: (previous, current) =>
          previous.posts.length != current.posts.length,
      builder: (context, state) {
        Post post = state.posts[widget.index];
        double aspectRatio = post.imageWidth / post.imageHeight;
        double height = widget.width / aspectRatio;
        final Color baseColor = Colors.grey.shade400;
        final Color highlightColor = Colors.grey.shade100;
        return SizedBox(
          height: height,
          width: widget.width,
          child: GestureDetector(
            onTap: () {
              Feedback.forTap(context);
              setState(() {
                shouldClearMemory = false;
              });
              AutoRouter.of(context).push(
                PostDetailRoute(
                  bloc: BlocProvider.of<GalleryGridBloc>(context),
                  initialIndex: widget.index,
                ),
              );
            },
            child: Hero(
              tag: "${state.uniqueKey}-${post.id}",
              child: Padding(
                padding: const EdgeInsets.all(2.5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ExtendedImage.network(
                    post.highQuality,
                    fit: BoxFit.cover,
                    cache: true,
                    clearMemoryCacheWhenDispose: shouldClearMemory,
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
              ),
            ),
          ),
        );
      },
    );
  }
}
