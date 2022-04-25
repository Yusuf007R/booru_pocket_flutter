import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/widgets/post_detail_menu.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactiveviewer_gallery/interactiveviewer_gallery.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen(
      {Key? key, required this.galleryGridBloc, required this.initialIndex})
      : super(key: key);

  final int initialIndex;
  final GalleryGridBloc galleryGridBloc;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PostDetailScreenCubitCubit(
            initialIndex: initialIndex,
            danbooruAuthCubit: context.read<DanbooruAuthCubit>(),
          ),
        ),
        BlocProvider.value(
          value: galleryGridBloc,
        ),
      ],
      child: const _PostDetailScreen(),
    );
  }
}

class _PostDetailScreen extends StatefulWidget {
  const _PostDetailScreen({Key? key}) : super(key: key);

  @override
  State<_PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<_PostDetailScreen> {
  late final PostDetailScreenCubitCubit detailCubit;
  late final int initialIndex;

  @override
  void initState() {
    super.initState();
    detailCubit = context.read<PostDetailScreenCubitCubit>();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: SystemUiOverlay.values);
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settingsState) {
        return BlocBuilder<PostDetailScreenCubitCubit,
            PostDetailScreenCubitState>(
          builder: (context, state) {
            if (state.showMenu) {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
                  overlays: SystemUiOverlay.values);
            } else {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                  overlays: []);
            }
            return BlocBuilder<GalleryGridBloc, GalleryGridState>(
              buildWhen: (previous, current) =>
                  (previous.posts.length != current.posts.length),
              builder: (context, gridBlocState) {
                return WillPopScope(
                  onWillPop: () async {
                    detailCubit.willPop();
                    return true;
                  },
                  child: Scaffold(
                    backgroundColor: Colors.black,
                    extendBody: true,
                    extendBodyBehindAppBar: true,
                    appBar: const PostDetailAppBar(),
                    bottomNavigationBar: const PostDetailBottomBar(),
                    body: Stack(
                      children: [
                        GestureDetector(
                          onTap: () => detailCubit.toggleShowMenu(),
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
                              return Hero(
                                tag: tag,
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.expand,
                                  children: [
                                    ExtendedImage.network(
                                      post.getImage(
                                          settingsState.gridImageQuality),
                                      fit: BoxFit.contain,
                                      loadStateChanged: loadStateChanged,
                                    ),
                                    if (isFocus &&
                                        isMaxQuality &&
                                        !state.willPop)
                                      ExtendedImage.network(
                                        post.maxQuality,
                                        fit: BoxFit.contain,
                                        loadStateChanged: loadStateChanged,
                                      ),
                                  ],
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
