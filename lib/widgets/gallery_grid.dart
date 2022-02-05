import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/widgets/gallery_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class GalleryGrid extends StatelessWidget {
//   const GalleryGrid({Key? key, required this.posts}) : super(key: key);

//   final int columns = 2;
//   final List<Post> posts;

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width / columns;
//     return SliverWaterfallFlow(
//       gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
//         crossAxisCount: columns,
//       ),
//       delegate: SliverChildBuilderDelegate(
//         (context, index) {
//           return GalleryGridItem(
//             width: width,
//             index: index,
//           );
//         },
//         childCount: posts.length,
//         addAutomaticKeepAlives: false,
//       ),
//     );
//   }
// }

class GalleryGrid extends StatelessWidget {
  const GalleryGrid({
    Key? key,
    required this.posts,
  }) : super(key: key);

  final List<Post> posts;
  final int columns = 2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / columns;
    return SliverMasonryGrid.count(
      crossAxisCount: columns,
      childCount: posts.length,
      itemBuilder: (context, index) {
        return GalleryGridItem(
          index: index,
          width: width,
        );
      },
    );
  }
}
