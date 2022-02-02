import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactiveviewer_gallery/interactiveviewer_gallery.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({
    Key? key,
    required this.initialIndex,
    required this.bloc,
  }) : super(key: key);
  final GalleryGridBloc bloc;
  final int initialIndex;

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  bool willPop = false;
  Map<int, bool> maxQuality = {};

  bool loading = false;

  Widget? loadStateChanged(ExtendedImageState state) {
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        WidgetsBinding.instance?.addPostFrameCallback((_) => setState(() {
              loading = true;
            }));
        return const SizedBox();
      case LoadState.completed:
        WidgetsBinding.instance?.addPostFrameCallback((_) => setState(() {
              loading = false;
            }));
        return null;
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      bloc: widget.bloc,
      buildWhen: (previous, current) =>
          (previous.posts.length != current.posts.length) ||
          (previous.currentDetailIndex != current.currentDetailIndex),
      builder: (context, blocState) {
        final currentPost = blocState.posts[blocState.currentDetailIndex];
        return WillPopScope(
          onWillPop: () async {
            setState(() {
              willPop = true;
            });
            return true;
          },
          child: Scaffold(
            backgroundColor: Colors.black,
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              shadowColor: Colors.transparent,
              title: Text("Post #${currentPost.id}"),
              backgroundColor: Colors.black.withOpacity(0.4),
              leading: IconButton(
                  onPressed: () => {
                        AutoRouter.of(context).pop(),
                      },
                  icon: const Icon(Icons.arrow_back)),
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ))
              ],
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(
                        Icons.save_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        maxQuality[blocState.currentDetailIndex] == true
                            ? Icons.high_quality
                            : Icons.high_quality_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          maxQuality[blocState.currentDetailIndex] == true
                              ? maxQuality[blocState.currentDetailIndex] = false
                              : maxQuality[blocState.currentDetailIndex] = true;
                        });
                      }),
                  IconButton(
                      icon: const Icon(
                        MdiIcons.heartOutline,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            body: Stack(
              children: [
                InteractiveviewerGallery(
                  disableDismissable: true,
                  sources: blocState.posts,
                  doubleTapScale: 0.3,
                  initIndex: widget.initialIndex,
                  maxScale: 8.0,
                  itemBuilder: (context, index, isFocus) {
                    final post = blocState.posts[index];
                    final isMaxQuality = maxQuality[index] ?? false;
                    final tag =
                        isFocus ? post.id.toString() : UniqueKey().toString();
                    return Hero(
                      tag: '${blocState.uniqueKey}-$tag',
                      child: Stack(
                        alignment: Alignment.center,
                        fit: StackFit.expand,
                        children: [
                          ExtendedImage.network(
                            post.highQuality,
                            loadStateChanged: loadStateChanged,
                          ),
                          if (isFocus && isMaxQuality && !willPop)
                            ExtendedImage.network(
                              post.maxQuality,
                              loadStateChanged: loadStateChanged,
                            ),
                        ],
                      ),
                    );
                  },
                  onPageChanged: (int pageIndex) {
                    widget.bloc.add(CurrentDetailIndexChanged(
                        currentDetailIndex: pageIndex));
                  },
                ),
                if (loading)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
