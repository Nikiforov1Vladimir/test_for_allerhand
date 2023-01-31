import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme{

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    textTheme: TextTheme(
      labelMedium: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w400
      ),
      headlineLarge: TextStyle(
        fontSize: 70.sp,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
          fontSize: 54.sp,
          fontStyle: FontStyle.italic,
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