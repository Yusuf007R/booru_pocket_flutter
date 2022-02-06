import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum TagType {
  artist,
  series,
  character,
  normal,
}

class Tag extends StatelessWidget {
  const Tag({Key? key, required this.tag, required this.tagType})
      : super(key: key);

  final String tag;
  final TagType tagType;

  Color getColor(BuildContext context, bool clicked) {
    if (clicked) return Theme.of(context).colorScheme.secondary;
    if (tagType == TagType.artist) {
      return const Color.fromARGB(255, 195, 8, 8);
    }
    if (tagType == TagType.series) {
      return const Color.fromARGB(255, 68, 87, 149);
    }
    if (tagType == TagType.character) {
      return const Color.fromARGB(255, 132, 20, 167);
    }
    return Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    if (tag.isEmpty) {
      return Container();
    }
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      builder: (context, state) {
        final clicked = state.selectedTags.contains(tag);
        final detailCubit = context.read<PostDetailScreenCubitCubit>();
        return Padding(
          padding: const EdgeInsets.all(4),
          child: SizedBox(
            height: 28,
            child: ElevatedButton(
              onLongPress: () {
                if (clicked) return detailCubit.removeTag(tag);
                return detailCubit.addTag(tag);
              },
              onPressed: () {
                if (state.selectedTags.isNotEmpty) {
                  Feedback.forLongPress(context);
                  if (clicked) return detailCubit.removeTag(tag);
                  return detailCubit.addTag(tag);
                }
                AutoRouter.of(context).push(PostRoute(inputTextValue: tag));
              },
              child: Text(
                tag,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(1, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: getColor(context, clicked)),
            ),
          ),
        );
      },
    );
  }
}
