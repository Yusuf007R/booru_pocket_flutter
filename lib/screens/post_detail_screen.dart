import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/models/api/post.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({
    Key? key,
    required this.bloc,
    required this.initialIndex,
  }) : super(key: key);
  final int initialIndex;
  final GalleryGridBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      bloc: bloc,
      buildWhen: (previous, current) =>
          previous.posts.length != current.posts.length,
      builder: (context, state) {
        return PhotoViewGallery.builder(
          pageController: PageController(initialPage: initialIndex),
          itemCount: state.posts.length,
          builder: (context, index) {
            final Post post = state.posts[index];
            return PhotoViewGalleryPageOptions.customChild(
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 16,
              heroAttributes: PhotoViewHeroAttributes(
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
              ),
              child: ExtendedImage.network(
                post.highQuality,
                cache: true,
                fit: BoxFit.contain,
              ),
            );
          },
        );
      },
    );
  }
}
