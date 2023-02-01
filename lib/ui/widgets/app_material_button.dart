import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_allerhands/utils/constants/colors.dart';

class AppMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color? iconColor;
  final Color? buttonColor;
  final double? width;
  final double? height;

  const AppMaterialButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.icon,
      this.iconColor,
      this.buttonColor,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          height: height ?? 145.h,
          elevation: 0,
          minWidth: width ?? 200.w,
          color: buttonColor ?? AppColors.grey,
          onPressed: onPressed,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 30.w),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: SvgPicture.asset(
            icon,
            color: iconColor ?? AppColors.black,
            width: 70.w,
            height: 70.h,
          ),
        ),
        SizedBox(height: 14.h),
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        )
      ],
    );
  }
}
