import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/utils/constants/colors.dart';

class VideoPlayerTime extends StatelessWidget {
  final Duration timePassed;
  final Duration videoLength;

  const VideoPlayerTime(
      {Key? key, required this.videoLength, required this.timePassed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${timePassed.inHours == 0 ? '' : '${timePassed.inHours} / '}${timePassed.inMinutes.remainder(60)}:${(timePassed.inSeconds.remainder(60))}'
      ' / '
      '${videoLength.inHours == 0 ? '' : '${videoLength.inHours} / '}${videoLength.inMinutes.remainder(60)}:${(timePassed.inSeconds.remainder(60))}',
      // '$timePassed / $videoLength',
      style: TextStyle(
          fontSize: 40.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.white
      ),
    );
  }
}
