import 'package:booru_pocket_flutter/models/shared/post.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/widgets/gallery_grid.dart';
import 'package:booru_pocket_flutter/widgets/home_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> posts = [];
  int _page = 1;
  bool fetching = false;
  double fetchMaxScroll = 0;
  final ScrollController _scrollController = ScrollController();

  _getMoreData() async {
    if (fetching) return;
    fetching = true;
    posts.addAll(await DanbooruRespository()
        .getPosts(page: _page, limit: 40, tags: ['']));
    setState(() {
      _page++;
      fetching = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getMoreData();
    _scrollController.addListener(() {
      if ((_scrollController.position.pixels >
          (_scrollController.position.maxScrollExtent * 0.8))) {
        _getMoreData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            const HomeNavBar(),
            GalleryGrid(posts: posts),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
