import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';
import 'package:test_allerhands/utils/constants/colors.dart';
import 'package:test_allerhands/utils/constants/strings.dart';
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
          ..initialize().then((value) => _videoPlayerController.pause());
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderObject? renderBox = _rowKey.currentContext!.findRenderObject();
      if(renderBox != null){
        setState(() {
          _rowHeight = 1;
        });
      }
    });
  }

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
                  child: HeroVideoPlayer(controller: _videoPlayerController)),
              SizedBox(height: 30.h),
              SizedBox(
                width: 950.w,
                child: Row(
                  key: _rowKey,
                  children: [
                    Container(
                      width: 6,
                      color: AppColors.blue,
                    ),
                    SizedBox(width: 30.w),
                    Expanded(
                      child: ReadMoreText(
                        AppStrings.heroScreenDescription,
                       style: Theme.of(context)
                           .textTheme
                           .bodyMedium!
                           .copyWith(fontStyle: FontStyle.italic
                       ),
                        trimCollapsedText: '\nЧитать полностью',
                        trimExpandedText: ' Свернуть',
                        moreStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!.copyWith(
                            fontStyle: FontStyle.normal,
                            color: AppColors.blue
                        ),
                        lessStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!.copyWith(
                            fontStyle: FontStyle.normal,
                            color: AppColors.blue
                        ),
                      )
                    )
                  ],
                ),
              )
            ],
          )
        ],
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
