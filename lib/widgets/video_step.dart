import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../constants.dart';

class VideoStep extends StatefulWidget {
  const VideoStep({super.key});

  @override
  State<VideoStep> createState() => VideoStepState();
}

class VideoStepState extends State<VideoStep> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.asset(urlVideo)
      ..initialize().then((_) => setState(() => chewieController =
          ChewieController(
              autoPlay: false,
              looping: true,
              videoPlayerController: videoPlayerController)));
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!videoPlayerController.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: videoPlayerController.value.aspectRatio,
        child: Chewie(controller: chewieController),
      ),
    );
  }
}
