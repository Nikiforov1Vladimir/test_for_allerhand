import 'package:flutter/material.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/full_screen_video_player.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/windowed_video_player.dart';
import 'package:video_player/video_player.dart';

class HeroInfoScreen extends StatefulWidget {
  const HeroInfoScreen({Key? key}) : super(key: key);

  @override
  State<HeroInfoScreen> createState() => _HeroInfoScreenState();
}

class _HeroInfoScreenState extends State<HeroInfoScreen> {
  late VideoPlayerController _videoPlayerController;

  double videoVolume = 1.0;
  late bool isMuted;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/dtm_race.mp4')
          ..addListener(() => setState(() {}))
          ..setLooping(false)
          ..setVolume(videoVolume)
          ..initialize().then((value) => _videoPlayerController.pause());
    isMuted = _videoPlayerController.value.volume == 0;
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  bool fullScreenMode = false;

  void closeButtonPressed() {
    setState(() {
      fullScreenMode = !fullScreenMode;
    });
    _videoPlayerController.pause();
  }

  void onPlayButtonPressed() {
    setState(() {
      fullScreenMode = !fullScreenMode;
    });
    _videoPlayerController.play();
  }

  @override
  Widget build(BuildContext context) {
    return fullScreenMode
        ? FullScreenVideoPlayer(
            videoPlayerController: _videoPlayerController,
            closeButtonPressed: closeButtonPressed,
        )
        : WindowedVideoPlayer(
        videoPlayerController: _videoPlayerController,
        onPlayButtonPressed: onPlayButtonPressed
    );
  }
}