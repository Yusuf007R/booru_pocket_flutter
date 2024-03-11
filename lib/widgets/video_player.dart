import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWrapper extends StatefulWidget {
  final Post post;
  const VideoPlayerWrapper({super.key, required this.post});

  @override
  State<VideoPlayerWrapper> createState() => _VideoPlayerWrapperState();
}

class _VideoPlayerWrapperState extends State<VideoPlayerWrapper> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  Chewie? playerWidget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      builder: (context, state) {
        if (state.loading) return Container();
        return playerWidget ?? Container();
      },
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  void initPlayer(
    PostDetailScreenCubitCubit postDetailCubit,
    DanbooruAuthCubit authCubit,
  ) async {
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.post.fileUrl),
      httpHeaders: {
        'user-agent': authCubit.userAgentHeader(),
      },
    );
    postDetailCubit.setLoading(true);
    await videoPlayerController.initialize();
    postDetailCubit.setLoading(false);
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
  void initState() {
    final postDetailCubit = context.read<PostDetailScreenCubitCubit>();
    final authCubit = context.read<DanbooruAuthCubit>();
    initPlayer(postDetailCubit, authCubit);
    super.initState();
  }
}
