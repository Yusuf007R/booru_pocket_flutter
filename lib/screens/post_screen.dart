import 'dart:async';

import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/widgets/gallery_grid.dart';
import 'package:booru_pocket_flutter/widgets/post_screen_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);
  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final ScrollController _scrollController = ScrollController();
  bool floatingButtonVisibility = false;
  @override
  void initState() {
    super.initState();
    context.read<GalleryGridBloc>().add(PostsFetched());
    _scrollController.addListener(onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      buildWhen: (previous, current) =>
          previous.posts.length != current.posts.length,
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: floatingButtonVisibility
              ? FloatingActionButton(
                  child: const Icon(Icons.arrow_upward_rounded),
                  onPressed: () {
                    _scrollController.animateTo(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                )
              : null,
          body: Scrollbar(
            child: RefreshIndicator(
              edgeOffset: 30,
              onRefresh: onRefresh,
              child: CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  const PostScreenNavBar(),
                  GalleryGrid(
                    posts: state.posts,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void onScroll() {
    if (!_scrollController.hasClients) return;
    final ScrollPosition position = _scrollController.position;
    if (position.userScrollDirection == ScrollDirection.reverse &&
        floatingButtonVisibility) {
      setState(() {
        floatingButtonVisibility = false;
      });
    } else if (position.userScrollDirection == ScrollDirection.forward &&
        !floatingButtonVisibility) {
      setState(() {
        floatingButtonVisibility = true;
      });
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
    return bloc.stream.firstWhere((element) => !element.refreshing);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(onScroll)
      ..dispose();
    super.dispose();
  }
}
