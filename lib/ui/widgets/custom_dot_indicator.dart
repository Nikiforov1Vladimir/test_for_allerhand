import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_allerhands/utils/constants/colors.dart';

class CustomDotIndicator extends StatelessWidget {

  final PageController pageController;
  final int dotCount;

  const CustomDotIndicator({Key? key, required this.pageController, required this.dotCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: pageController,
        count: dotCount,
        effect: CustomizableEffect(
            spacing: 10,
            dotDecoration: DotDecoration(
              width: 12,
              height: 12,
              borderRadius: BorderRadius.circular(90),
              dotBorder: const DotBorder(
                width: 2,
                color: AppColors.black
              )
            ),
            activeDotDecoration: DotDecoration(
                width: 12,
                height: 12,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(90),
                dotBorder: const DotBorder(
                    width: 2,
                    color: AppColors.black
                )
            )
        ),
    );
  }
}
