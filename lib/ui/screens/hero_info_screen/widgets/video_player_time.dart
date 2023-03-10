import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/utils/constants/colors.dart';

extension on Duration {
  String format() => '$this'.split('.')[0].padLeft(8, '0');
}

class VideoPlayerTime extends StatelessWidget {
  final Duration timePassed;
  final Duration videoLength;

  const VideoPlayerTime(
      {Key? key, required this.videoLength, required this.timePassed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${timePassed.format()} / ${videoLength.format()}',
      style: TextStyle(
          fontSize: 40.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.white
      ),
    );
  }
}
