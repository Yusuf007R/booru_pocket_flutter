import 'package:booru_pocket_flutter/models/api/post.dart';
import 'package:booru_pocket_flutter/widgets/gallery_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class GalleryGrid extends StatelessWidget {
  const GalleryGrid({Key? key, required this.posts}) : super(key: key);

  final int columns = 2;
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / columns;
    return SliverWaterfallFlow(
      gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GalleryGridItem(
            width: width,
            index: index,
          );
        },
        childCount: posts.length,
        addAutomaticKeepAlives: false,
      ),
    );
  }
}

// class GalleryGrid extends StatelessWidget {
//   const GalleryGrid({
//     Key? key,
//     required this.posts,
//   }) : super(key: key);

//   final List<Post> posts;
//   final int columns = 2;

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width / columns;
//     return SliverStaggeredGrid.countBuilder(
//       addAutomaticKeepAlives: false,
//       crossAxisCount: columns,
//       mainAxisSpacing: 4.0,
//       crossAxisSpacing: 4.0,
//       staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
//       itemCount: posts.length,
//       itemBuilder: (context, index) {
//         return GalleryGridItem(
//           index: index,
//           width: width,
//           post: posts[index],
//         );
//       },
//     );
//   }
// }
