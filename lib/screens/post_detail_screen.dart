import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/gallery_grid_cubit/gallery_grid_cubit.dart';
import 'package:BooruPocket/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/services/system_ui_service.dart';
import 'package:BooruPocket/widgets/danbooru_image.dart';
import 'package:BooruPocket/widgets/post_detail_menu.dart';
import 'package:BooruPocket/widgets/video_player.dart';
import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactiveviewer_gallery/interactiveviewer_gallery.dart';

@RoutePage()
class PostDetailScreen extends StatelessWidget {
  final int initialIndex;

  final GalleryGridCubit galleryGridCubit;
  const PostDetailScreen({
    super.key,
    required this.galleryGridCubit,
    required this.initialIndex,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PostDetailScreenCubitCubit(
            initialIndex: initialIndex,
          ),
        ),
        BlocProvider.value(
          value: galleryGridCubit,
        ),
      ],
      child: const _PostDetailScreen(),
    );
  }
}

class _PostDetailScreen extends StatefulWidget {
  const _PostDetailScreen();

  @override
  State<_PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<_PostDetailScreen> {
  late final PostDetailScreenCubitCubit detailCubit;
  late final int initialIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settingsState) {
        return BlocBuilder<GalleryGridCubit, GalleryGridState>(
          buildWhen: (previous, current) =>
              (previous.posts.length != current.posts.length),
          builder: (context, gridBlocState) {
            return BlocBuilder<PostDetailScreenCubitCubit,
                PostDetailScreenCubitState>(
              builder: (context, state) {
                final postInfo = gridBlocState.posts[state.currentPostIndex];

                if (state.showMenu || postInfo.isVideo) {
                  SystemUiService.showSystemUI();
                } else {
                  SystemUiService.hideSystemUI();
                }

                return Scaffold(
                  backgroundColor: Colors.black,
                  extendBody: !postInfo.isVideo,
                  extendBodyBehindAppBar: !postInfo.isVideo,
                  appBar: const PostDetailAppBar(),
                  bottomNavigationBar: const PostDetailBottomBar(),
                  body: Stack(
                    children: [
                      GestureDetector(
                        onTap: detailCubit.toggleShowMenu,
                        child: InteractiveviewerGallery(
                          disableDismissable: true,
                          sources: gridBlocState.posts,
                          doubleTapScale: 0.3,
                          initIndex: state.currentPostIndex,
                          maxScale: 8.0,
                          itemBuilder: (context, index, isFocus) {
                            final post = gridBlocState.posts[index];
                            final isMaxQuality =
                                settingsState.detailPageQuality ==
                                        ImageQuality.max ||
                                    (state.maxQuality[index] ?? false);

                            final tag = index == state.currentPostIndex
                                ? "${gridBlocState.uniqueKey}-${post.id}"
                                : UniqueKey().toString();

                            final stackChildren = [
                              // this is the default image for the hero animation
                              if (isFocus &&
                                  (settingsState.gridImageQuality !=
                                          settingsState.detailPageQuality ||
                                      post.isVideo))
                                DanbooruImage(
                                  imageUrl: post.getImage(
                                    settingsState.gridImageQuality,
                                  ),
                                  fit: BoxFit.contain,
                                  loadStateChanged: loadStateChanged,
                                ),
                              ...post.isVideo
                                  ? [
                                      if (isFocus)
                                        VideoPlayerWrapper(
                                          post: post,
                                          postDetailCubit: detailCubit,
                                          authCubit:
                                              context.read<DanbooruAuthCubit>(),

                                          // if we do not do this, the video will render under the image
                                          onVideoStart: () => setState(() {}),
                                        ),
                                    ]
                                  : [
                                      DanbooruImage(
                                        imageUrl: post.getImage(
                                          settingsState.detailPageQuality,
                                        ),
                                        fit: BoxFit.contain,
                                        loadStateChanged: loadStateChanged,
                                      ),
                                      if (isFocus && isMaxQuality)
                                        DanbooruImage(
                                          imageUrl: post.getImage(
                                            ImageQuality.max,
                                          ),
                                          fit: BoxFit.contain,
                                          loadStateChanged: loadStateChanged,
                                        ),
                                    ],
                            ];

                            return Hero(
                              tag: tag,
                              child: Stack(
                                alignment: Alignment.center,
                                fit: StackFit.expand,
                                children: stackChildren,
                              ),
                            );
                          },
                          onPageChanged: (int pageIndex) {
                            detailCubit.setCurrentPostIndex(pageIndex);
                          },
                        ),
                      ),
                      if (state.loading)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    detailCubit = context.read<PostDetailScreenCubitCubit>();
  }

  Widget? loadStateChanged(ExtendedImageState state) {
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        detailCubit.setLoading(true);
        return const SizedBox();
      case LoadState.completed:
        detailCubit.setLoading(false);
        return null;
      default:
        return const SizedBox();
    }
  }
}
