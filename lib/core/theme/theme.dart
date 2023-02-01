import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme{

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      titleSpacing: 80.w,
      centerTitle: false,
      toolbarHeight: 180.h,
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      ),
      labelMedium: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
      ),
      labelSmall: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
      headlineLarge: TextStyle(
        fontSize: 70.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
      ),
      headlineMedium: TextStyle(
          fontSize: 64.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'PlayfairDisplay'
      ),
      headlineSmall: TextStyle(
          fontSize: 48.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'PlayfairDisplay'
      ),
      bodyMedium: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w400,
      )
    )
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true
  );

}