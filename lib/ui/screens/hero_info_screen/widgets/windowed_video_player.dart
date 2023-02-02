import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/video_player.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';
import 'package:video_player/video_player.dart';

import 'hero_description.dart';
import 'pause_state.dart';

class WindowedVideoPlayer extends StatelessWidget {
  final VideoPlayerController videoPlayerController;
  final VoidCallback onPlayButtonPressed;

  const WindowedVideoPlayer(
      {Key? key,
      required this.videoPlayerController,
      required this.onPlayButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarTitle(
          title: 'Фамилия Имя Отчество',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 350.w,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Lorem Ipsum dolor sit amet\nLorem Ipsum dolor sit ametLorem ipsum',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                  height: 500.h,
                  width: 950.w,
                  child: Stack(
                    children: [
                      HeroVideoPlayer(controller: videoPlayerController),
                      PauseState(onPressed: onPlayButtonPressed),
                    ],
                  )),
              SizedBox(height: 30.h),
              const HeroDescription()
            ],
          )
        ],
      ),
    );
  }
}
