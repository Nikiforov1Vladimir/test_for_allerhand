import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HeroVideoPlayer extends StatelessWidget {
  final VideoPlayerController controller;

  const HeroVideoPlayer({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller.value.isInitialized) {
      return VideoPlayer(controller);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
// aspectRatio: controller.value.aspectRatio,

