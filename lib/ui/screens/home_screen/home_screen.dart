import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/home_screen/widgets/home_screen_title.dart';
import 'package:test_allerhands/utils/constants/strings.dart';

import 'widgets/bottom_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //была идея сделать это стаком и поместить на задний фон башни
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Image.asset('assets/images/babylon_tower_1.png',)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/company_title.png',
                    width: 480.w,
                    height: 100.h,
                  ),
                  const HomeScreenTitle(),
                  SizedBox(
                    width: 750.w,
                    child: Text(
                      AppStrings.homeScreenBodyText,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const BottomButtons(),
                ],
              ),
              Flexible(child: Image.asset('assets/images/babylon_tower_2.png')),
            ],
          )
        ],
      ),
    );
  }
}
