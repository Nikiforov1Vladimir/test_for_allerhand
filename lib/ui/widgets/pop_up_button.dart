import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/utils/constants/colors.dart';

class PopUpButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double? horizontalPadding;

  const PopUpButton(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      this.horizontalPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
          vertical: 20.h, horizontal: horizontalPadding ?? 30.w),
      color: AppColors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Text(
        buttonText,
        style: TextStyle(color: AppColors.white, fontSize: 24.sp),
      ),
    );
  }
}
