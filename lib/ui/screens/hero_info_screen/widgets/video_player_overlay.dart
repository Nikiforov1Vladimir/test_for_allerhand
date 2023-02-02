import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/video_player_time.dart';
import 'package:test_allerhands/ui/widgets/app_icon_button.dart';
import 'package:test_allerhands/utils/constants/colors.dart';
import 'package:test_allerhands/utils/constants/icons.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerOverlay extends StatelessWidget {

  final VideoPlayerController controller;
  final VoidCallback closeButtonPressed;

  const VideoPlayerOverlay(
      {Key? key, required this.controller, required this.closeButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
                  child: AppIconButton(
                      icon: AppIcons.close,
                      iconSize: 40,
                      onPressed: closeButtonPressed),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
                child: Row(
                  children: [
                    AppIconButton(
                        icon: AppIcons.play,
                        iconSize: 50,
                        onPressed: () {
                          if (controller.value.isPlaying) {
                            controller.pause();
                          } else {
                            controller.play();
                          }
                        }),
                    AppIconButton(
                        icon: AppIcons.backTenSec,
                        iconSize: 50,
                        onPressed: () {
                          controller.seekTo(controller.value.position -
                              const Duration(seconds: 10));
                        }),
                    AppIconButton(
                        icon: AppIcons.forwardTenSec,
                        iconSize: 50,
                        onPressed: () {
                          controller.seekTo(controller.value.position +
                              const Duration(seconds: 10));
                        }),
                    AppIconButton(
                        icon: controller.value.volume == 0 ? AppIcons.volumeOffIcon : AppIcons.volume,
                        iconSize: 50,
                        onPressed: (){
                          controller.value.volume == 0
                              ? controller.setVolume(1)
                              : controller.setVolume(0);
                        },
                    ),
                    Slider(
                        value: controller.value.volume,
                        activeColor: AppColors.blue,
                        onChanged: (value){
                          controller.setVolume(value);
                        }
                    ),
                    const Spacer(),
                    VideoPlayerTime(
                      timePassed: controller.value.position,
                      videoLength: controller.value.duration,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
                child: VideoProgressIndicator(controller,
                    colors:
                    const VideoProgressColors(playedColor: AppColors.blue),
                    allowScrubbing: true),
              ),
            ],
          ),
        )
      ],
    );
  }
}
