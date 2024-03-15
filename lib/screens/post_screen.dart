import 'dart:async';

import 'package:BooruPocket/blocs/gallery_grid_cubit/gallery_grid_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/widgets/date_post_screen_nav_bar.dart';
import 'package:BooruPocket/widgets/gallery_grid.dart';
import 'package:BooruPocket/widgets/post_screen_fab.dart';
import 'package:BooruPocket/widgets/post_screen_nav_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoImplicitScrollPhysics extends AlwaysScrollableScrollPhysics {
  const NoImplicitScrollPhysics({required ScrollPhysics parent})
      : super(parent: parent);

  @override
  bool get allowImplicitScrolling => false;

  @override
  NoImplicitScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return NoImplicitScrollPhysics(parent: buildParent(ancestor)!);
  }
}

@RoutePage()
class PostScreen extends StatefulWidget {
  const PostScreen({
    super.key,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

enum PostScreenType { user, gallery, favorites, popular, curated }

class _PostScreenState extends State<PostScreen> {
  final ScrollController _scrollController = ScrollController();
  late ValueNotifier<bool> visible;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      // listenWhen: (previous, current) =>
      //     previous.rating != current.rating ||
      //     previous.pageLimit != current.pageLimit,
      listener: (context, state) {
        context.read<GalleryGridCubit>().fetchPosts(shouldReset: true);
      },
      child: BlocBuilder<GalleryGridCubit, GalleryGridState>(
        builder: (context, state) {
          final postScreenType = context.read<PostScreenType>();
          final isDatePostScreen = postScreenType == PostScreenType.curated ||
              postScreenType == PostScreenType.popular;

          if (state.posts.isEmpty &&
              _scrollController.hasClients &&
              _scrollController.offset != 0) {
            _scrollController.jumpTo(0);
          }
          return Scaffold(
            floatingActionButton:
                PostScreenFAB(scrollController: _scrollController),
            body: Scrollbar(
              child: RefreshIndicator(
                edgeOffset: 30,
                onRefresh: onRefresh,
                child: CustomScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  controller: _scrollController,
                  physics: state.posts.isEmpty
                      ? const NeverScrollableScrollPhysics()
                      : const NoImplicitScrollPhysics(
                          parent: BouncingScrollPhysics(),
                        ),
                  slivers: [
                    isDatePostScreen
                        ? const DatePostScreenNavBar()
                        : const PostScreenNavBar(),
                    const GalleryGrid(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(onScroll)
      ..dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(onScroll);
    context.read<GalleryGridCubit>().fetchPosts(shouldReset: true);
    visible = context.read<ValueNotifier<bool>>();
  }

  Future<GalleryGridState> onRefresh() {
    final cubit = context.read<GalleryGridCubit>();
    cubit.refreshPosts();
    return cubit.stream
        .firstWhere((element) => element.gridStatus != GridStatus.refreshing);
  }

  void onScroll() async {
    if (!_scrollController.hasClients) return;

    final ScrollPosition position = _scrollController.position;
    if (position.userScrollDirection == ScrollDirection.reverse &&
        visible.value) {
      visible.value = false;
    } else if (position.userScrollDirection == ScrollDirection.forward &&
        !visible.value) {
      visible.value = true;
    }
    final bool isNotAtStart = position.pixels > 0;
    final bool isAtOrNearEdge =
        position.atEdge || position.pixels > (position.maxScrollExtent * 0.8);
    final bool isScreenFilled =
        position.extentBefore != 0 || position.extentAfter != 0;

    if (!isScreenFilled || (isNotAtStart && isAtOrNearEdge)) {
      context.read<GalleryGridCubit>().fetchPosts();
    }
  }
}
