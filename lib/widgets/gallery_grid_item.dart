import 'package:booru_pocket_flutter/models/shared/post.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GalleryGridItem extends StatelessWidget {
  const GalleryGridItem({
    Key? key,
    required this.width,
    required this.post,
  }) : super(key: key);
  final double width;
  final Post post;

  @override
  Widget build(BuildContext context) {
    double aspectRatio = post.imageWidth / post.imageHeight;
    double height = width / aspectRatio;
    final Color baseColor = Colors.grey.shade400;
    final Color highlightColor = Colors.grey.shade100;
    return SizedBox(
      height: height,
      width: width,
      child: ExtendedImage.network(
        post.highQuality,
        fit: BoxFit.cover,
        cache: true,
        clearMemoryCacheWhenDispose: true,
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
                  stops: const <double>[0.0, 0.35, 0.5, 0.65, 1.0],
                ),
                child: Container(
                  height: height,
                  width: width,
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
    );
  }
}
