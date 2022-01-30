import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({
    Key? key,
    required this.initialIndex,
    required this.bloc,
  }) : super(key: key);
  final GalleryGridBloc bloc;
  final int initialIndex;

  PhotoViewScaleState myScaleStateCycle(PhotoViewScaleState actual) {
    switch (actual) {
      case PhotoViewScaleState.initial:
        return PhotoViewScaleState.originalSize;
      default:
        return PhotoViewScaleState.initial;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      bloc: bloc,
      buildWhen: (previous, current) =>
          (previous.posts.length != current.posts.length) ||
          (previous.currentDetailIndex != current.currentDetailIndex),
      builder: (context, state) {
        return PhotoViewGallery.builder(
          loadingBuilder: (context, event) => const Center(
            child: CircularProgressIndicator(),
          ),
          pageController: PageController(initialPage: initialIndex),
          itemCount: state.posts.length,
          onPageChanged: (index) =>
              bloc.add(CurrentDetailIndexChanged(currentDetailIndex: index)),
          builder: (context, index) {
            final Post post = state.posts[index];
            return PhotoViewGalleryPageOptions(
              imageProvider: ExtendedNetworkImageProvider(
                post.maxQuality,
                cache: true,
              ),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 16,
              scaleStateCycle: myScaleStateCycle,
              heroAttributes: index == state.currentDetailIndex
                  ? PhotoViewHeroAttributes(
                      tag: "${state.uniqueKey}-${post.id}",
                      flightShuttleBuilder: (
                        BuildContext flightContext,
                        Animation<double> animation,
                        HeroFlightDirection flightDirection,
                        BuildContext fromHeroContext,
                        BuildContext toHeroContext,
                      ) {
                        final Widget hero =
                            flightDirection == HeroFlightDirection.push
                                ? toHeroContext.widget
                                : fromHeroContext.widget;
                        return hero;
                      },
                    )
                  : null,
            );
          },
        );
      },
    );
  }
}
