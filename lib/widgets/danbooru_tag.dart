import 'package:BooruPocket/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/widgets/tag.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DanbooruTag extends StatelessWidget {
  final String value;

  final DanbooruTagType? tagType;
  const DanbooruTag({
    super.key,
    required this.value,
    this.tagType,
  });

  @override
  Widget build(BuildContext context) {
    if (value.isEmpty) {
      return Container();
    }
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      builder: (context, state) {
        final detailCubit = context.read<PostDetailScreenCubitCubit>();
        final isSelected = state.selectedTags.contains(value);
        return Padding(
          padding: const EdgeInsets.all(4),
          child: Tag(
            value: value,
            color: getColor(context, isSelected),
            onLongPress: () {
              detailCubit.toggleSelectedTag(value);
            },
            onPressed: () {
              if (state.selectedTags.isNotEmpty) {
                Feedback.forLongPress(context);
                detailCubit.toggleSelectedTag(value);
                return;
              }
              AutoRouter.of(context).push(
                PostRouteWrapper(
                  inputTextValue: value,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Color getColor(BuildContext context, bool clicked) {
    if (clicked) return Theme.of(context).colorScheme.secondary;
    switch (tagType) {
      case DanbooruTagType.artist:
        return const Color.fromARGB(255, 195, 8, 8);
      case DanbooruTagType.series:
        return const Color.fromARGB(255, 68, 87, 149);
      case DanbooruTagType.character:
        return const Color.fromARGB(255, 132, 20, 167);
      default:
        return Theme.of(context).primaryColor;
    }
  }
}

enum DanbooruTagType {
  artist,
  series,
  character,
  normal,
}
