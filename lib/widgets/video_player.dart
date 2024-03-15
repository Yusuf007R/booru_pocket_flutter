import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/post_detail_screen_cubit/post_detail_screen_cubit_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoPlayerWrapper extends StatefulWidget {
  final Post post;
  final DanbooruAuthCubit authCubit;
  final PostDetailScreenCubitCubit postDetailCubit;

  final Function? onVideoStart;
  const VideoPlayerWrapper({
    super.key,
    required this.post,
    required this.authCubit,
    required this.postDetailCubit,
    this.onVideoStart,
  });

  @override
  State<VideoPlayerWrapper> createState() => _VideoPlayerWrapperState();
}

class _VideoPlayerWrapperState extends State<VideoPlayerWrapper> {
  late VideoPlayerController videoPlayerController;

  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostDetailScreenCubitCubit, PostDetailScreenCubitState>(
      bloc: widget.postDetailCubit,
      builder: (context, state) {
        // final thumbnailUrl = widget.thumbnailUrl;
        return CustomVideoPlayer(
          customVideoPlayerController: _customVideoPlayerController,
        );
      },
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();

    super.dispose();
  }

  void initPlayer() async {
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.post.getImage(ImageQuality.max)),
      httpHeaders: {
        'user-agent': widget.authCubit.userAgentHeader(),
      },
    );
    widget.postDetailCubit.setLoading(true);
    videoPlayerController.initialize().then(
      (value) {
        widget.postDetailCubit.setLoading(false);
        videoPlayerController.play();
        if (widget.onVideoStart != null) {
          widget.onVideoStart!();
        }
      },
    );

    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
      customVideoPlayerSettings: const CustomVideoPlayerSettings(
        autoFadeOutControls: false,
        settingsButtonAvailable: false,
        showFullscreenButton: false,
      ),
    );
    await videoPlayerController.setLooping(true);
  }

  @override
  void initState() {
    initPlayer();

    super.initState();
  }
}
