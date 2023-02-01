import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/utils/constants/strings.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: '${AppStrings.homeScreenTitle}\n',
            style: Theme.of(context).textTheme.headlineLarge,
            children: [
              TextSpan(
                  text: 'Loren ipsum dolor sit amet',
                  style: TextStyle(
                      fontSize: 54.sp,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'PlayfairDisplay'
                  )
              )
            ]
        )
    );
  }
}
