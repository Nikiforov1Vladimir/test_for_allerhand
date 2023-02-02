import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'video_player.dart';
import 'video_player_overlay.dart';

class FullScreenVideoPlayer extends StatelessWidget {

  final VideoPlayerController videoPlayerController;
  final VoidCallback closeButtonPressed;

  const FullScreenVideoPlayer({Key? key, required this.videoPlayerController, required this.closeButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: AspectRatio(
                aspectRatio: videoPlayerController.value.aspectRatio,
                child: HeroVideoPlayer(
                  controller: videoPlayerController,
                )),
          ),
          VideoPlayerOverlay(
            controller: videoPlayerController,
            closeButtonPressed: closeButtonPressed,
          )
        ],
      ),
    );
  }
}
