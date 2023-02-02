import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/hero_description.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/pause_state.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/widgets/video_player_time.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';
import 'package:test_allerhands/ui/widgets/app_icon_button.dart';
import 'package:test_allerhands/utils/constants/colors.dart';
import 'package:test_allerhands/utils/constants/icons.dart';
import 'package:video_player/video_player.dart';

import 'widgets/video_player.dart';

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

  final GlobalKey _rowKey = GlobalKey();
  late double _rowHeight;

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
                      HeroVideoPlayer(
                          controller: _videoPlayerController
                      ),
                      Builder(
                        builder: (context){
                          if(_videoPlayerController.value.isPlaying){
                            return GestureDetector(
                              onDoubleTap: (){
                                _videoPlayerController.pause();
                              },
                            );
                          }
                          else{
                            return Stack(
                              children: [
                                PauseState(
                                    onPressed: (){
                                      setState(() {
                                        _videoPlayerController.play();
                                      });
                                    }
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.w
                                      ),
                                      child: Row(
                                        children: [
                                          AppIconButton(
                                            icon: isMuted
                                                ? AppIcons.volumeOffIcon
                                                : AppIcons.volume,
                                            onPressed: () {
                                              _videoPlayerController.setVolume(isMuted ? 1 : 0);
                                              setState((){
                                                isMuted = !isMuted;
                                              });
                                            }
                                          ),
                                          const Spacer(),
                                          VideoPlayerTime(
                                            timePassed: _videoPlayerController.value.position,
                                            videoLength: _videoPlayerController.value.duration,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:20.h,
                                      child: VideoProgressIndicator(
                                          _videoPlayerController,
                                          colors: const VideoProgressColors(
                                            playedColor: AppColors.blue
                                          ),
                                          allowScrubbing: true
                                      ),
                                    )
                                  ],
                                )
                              ],
                            );
                          }
                        },
                      ),
                    ],
                  )
              ),
              SizedBox(height: 30.h),
              const HeroDescription()
            ],
          )
        ],
      ),
    );
  }
}
