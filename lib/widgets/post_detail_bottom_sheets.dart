import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:booru_pocket_flutter/utils/bytes_to_human.dart';
import 'package:booru_pocket_flutter/widgets/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/api/post/post.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({Key? key, required this.post}) : super(key: key);

  final Post post;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PostDetailBottomSheetAppBar(text: 'Info'),
          Container(
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 20).add(
              MediaQuery.of(context).padding,
            ),
            child: Table(
              defaultColumnWidth:
                  FixedColumnWidth(MediaQuery.of(context).size.width * 0.40),
              children: [
                infoTableRow('Post ID', post.id.toString()),
                infoTableRow('Uploader ID', post.uploaderId.toString()),
                infoTableRow('Score', post.score.toString()),
                infoTableRow('Rating', post.rating.name),
                infoTableRow('File size', formatBytes(post.size.toInt(), 2)),
                infoTableRow('Resolution',
                    '${post.imageWidth.toStringAsFixed(0)}x${post.imageHeight.toStringAsFixed(0)}'),
                infoTableRow(
                  'Upload At',
                  '${post.updatedAt.day.toString().padLeft(2, '0')}-${post.updatedAt.month.toString().padLeft(2, '0')}-${post.updatedAt.year}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow infoTableRow(String title, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class TagBottomSheet extends StatelessWidget {
  const TagBottomSheet({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const PostDetailBottomSheetAppBar(text: 'Tags'),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4),
                    width: double.infinity,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: MediaQuery.of(context).padding,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: getTags,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: SpeedDial(
                  icon: Icons.menu_rounded,
                  visible: state.selectedTags.isNotEmpty,
                  children: [
                    SpeedDialChild(
                        child: const Icon(Icons.copy),
                        label: 'Copy tag',
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                              text: state.selectedTags.join(' ')));
                          Fluttertoast.showToast(
                            msg: "Tags copied to clipboard",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        }),
                    SpeedDialChild(
                      child: const Icon(Icons.search),
                      label: 'Search it',
                      onTap: () {
                        final tags = state.selectedTags.join(' ');
                        if (tags.isNotEmpty) {
                          AutoRouter.of(context)
                              .push(PostRoute(inputTextValue: tags));
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  List<Widget> get getTags {
    return [
      ...post.artistTag.map((e) => Tag(tag: e, tagType: TagType.artist)),
      ...post.seriesTag.map((e) => Tag(tag: e, tagType: TagType.series)),
      ...post.characterTag.map((e) => Tag(tag: e, tagType: TagType.character)),
      ...post.tags.map((e) => Tag(tag: e, tagType: TagType.normal)),
    ];
  }
}

class PostDetailBottomSheetAppBar extends StatelessWidget {
  const PostDetailBottomSheetAppBar({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
