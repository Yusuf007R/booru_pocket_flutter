import 'dart:async';

import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';

import 'package:booru_pocket_flutter/widgets/gallery_grid.dart';
import 'package:booru_pocket_flutter/widgets/popular_screen_nav_bar.dart';
import 'package:booru_pocket_flutter/widgets/post_screen_fab.dart';
import 'package:booru_pocket_flutter/widgets/post_screen_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PostScreenType { user, gallery, favorites, popular }

class PostScreen extends StatefulWidget {
  const PostScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final ScrollController _scrollController = ScrollController();
  late ValueNotifier<bool> visible;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(onScroll);
    context.read<GalleryGridBloc>().add(PostsFetched());
    visible = context.read<ValueNotifier<bool>>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      builder: (context, state) {
        final isPopularScreen =
            context.read<PostScreenType>() == PostScreenType.popular;

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
                  isPopularScreen
                      ? const PopularScreenNavBar()
                      : const PostScreenNavBar(),
                  const GalleryGrid(),
                ],
              ),
            ),
          ),
        );
      },
    );
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
      context.read<GalleryGridBloc>().add(PostsFetched());
    }
  }

  Future<GalleryGridState> onRefresh() {
    GalleryGridBloc bloc = context.read<GalleryGridBloc>();
    bloc.add(PostsRefreshed());
    return bloc.stream
        .firstWhere((element) => element.gridStatus != GridStatus.refreshing);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(onScroll)
      ..dispose();

    super.dispose();
  }
}

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
