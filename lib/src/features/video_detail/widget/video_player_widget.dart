import 'package:better_player/better_player.dart';
// import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:iconfide/src/config/theme/colors.dart';
// import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  // late VideoPlayerController _videoPlayerController;
  // late ChewieController _chewieController;
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource =
        BetterPlayerDataSource.network(widget.videoUrl);

    _betterPlayerController = BetterPlayerController(
        const BetterPlayerConfiguration(
          autoPlay: true,
          aspectRatio: 16 / 9,
        ),
        betterPlayerDataSource: betterPlayerDataSource);

    // _videoPlayerController =
    //     VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    // _videoPlayerController.initialize().then(
    //       (_) => setState(
    //         () => _chewieController = ChewieController(
    //           videoPlayerController: _videoPlayerController,
    //           aspectRatio: 16 / 9,
    //           autoPlay: true,
    //         ),
    //       ),
    //     );
  }

  @override
  void dispose() {
    // _videoPlayerController.dispose();
    // _chewieController.dispose();
    _betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer(controller: _betterPlayerController),
    );
  }
}
