import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';
import 'package:video_player/video_player.dart';

class HeroInfoScreen extends StatefulWidget {
  const HeroInfoScreen({Key? key}) : super(key: key);

  @override
  State<HeroInfoScreen> createState() => _HeroInfoScreenState();
}

class _HeroInfoScreenState extends State<HeroInfoScreen> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/dtm_race.mp4')
          ..addListener(() => setState(() {}))
          ..setLooping(false)
          ..initialize().then((value) => _videoPlayerController.play());
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Фамилия Имя Отчество',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 350.w,
        ),
        child: SizedBox(
          width: 950.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum dolor sit amet\nLorem Ipsum dolor sit ametLorem ipsum',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                  height: 500.h,
                  child: HeroVideoPlayer(controller: _videoPlayerController)
              ),
              SizedBox(height: 30.h),
              Text(
                'Donec eu sagittis neque. Vestibulum porta eu nisl at varius. Sed congue fringilla lacinia. Sed ac est ac sem vulputate dapibus. Cras diam turpis, faucibus ac vehicula fermentum, volutpat ac mi.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontStyle: FontStyle.italic
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeroVideoPlayer extends StatelessWidget {
  final VideoPlayerController controller;

  const HeroVideoPlayer({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller != null && controller.value.isInitialized) {
      return AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller));
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }
}
