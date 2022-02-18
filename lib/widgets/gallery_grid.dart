import 'package:booru_pocket_flutter/blocs/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settingsState) {
        double width =
            MediaQuery.of(context).size.width / settingsState.gridColumns;
        return BlocBuilder<GalleryGridBloc, GalleryGridState>(
          builder: (context, state) {
            return state.posts.isEmpty &&
                    state.gridStatus != GridStatus.refreshing
                ? const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : SliverMasonryGrid.count(
                    crossAxisCount: settingsState.gridColumns,
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
      },
    );
  }
}
