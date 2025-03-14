import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DanbooruImage extends StatelessWidget {
  final String imageUrl;
  final bool cache;
  final Widget? Function(ExtendedImageState)? loadStateChanged;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final double compressionRatio;

  const DanbooruImage({
    super.key,
    required this.imageUrl,
    this.cache = true,
    this.loadStateChanged,
    this.fit,
    this.width,
    this.height,
    this.compressionRatio = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      imageUrl,
      headers: {
        'user-agent': context.read<DanbooruAuthCubit>().userAgentHeader(),
      },
      cache: cache,
      loadStateChanged: loadStateChanged ?? (state) => const SizedBox(),
      fit: fit,
      compressionRatio: compressionRatio,
      cacheHeight: height?.toInt(),
      cacheWidth: width?.toInt(),
      width: width,
      height: height,
    );
  }
}
