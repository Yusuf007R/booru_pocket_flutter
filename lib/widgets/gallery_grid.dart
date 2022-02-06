import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/widgets/gallery_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  }) : super(key: key);

  final int columns = 2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / columns;
    return BlocBuilder<GalleryGridBloc, GalleryGridState>(
      buildWhen: (previous, current) =>
          previous.gridStatus != current.gridStatus,
      builder: (context, state) {
        return state.posts.isEmpty && state.gridStatus != GridStatus.refreshing
            ? const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              )
            : SliverMasonryGrid.count(
                crossAxisCount: columns,
                childCount: state.posts.length,
                itemBuilder: (context, index) {
                  return GalleryGridItem(
                    index: index,
                    width: width,
                  );
                },
              );
      },
    );
  }
}
