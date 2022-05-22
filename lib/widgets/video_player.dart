import 'package:booru_pocket_flutter/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWrapper extends StatefulWidget {
  const VideoPlayerWrapper({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  State<VideoPlayerWrapper> createState() => _VideoPlayerWrapperState();
}

class _VideoPlayerWrapperState extends State<VideoPlayerWrapper> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  Chewie? playerWidget;

  @override
  void initState() {
    final cubit = context.read<PostDetailScreenCubitCubit>();
    initPlayer(cubit);
    super.initState();
  }

  void initPlayer(PostDetailScreenCubitCubit cubit) async {
    videoPlayerController = VideoPlayerController.network(widget.post.fileUrl);
    cubit.setLoading(true);
    await videoPlayerController.initialize();
    cubit.setLoading(false);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      showOptions: false,
      showControls: true,
      aspectRatio: widget.post.imageWidth / widget.post.imageHeight,
    );
    playerWidget = Chewie(
      controller: chewieController!,
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      builder: (context, state) {
        if (state.loading) return Container();
        return playerWidget ?? Container();
      },
    );
  }
}
