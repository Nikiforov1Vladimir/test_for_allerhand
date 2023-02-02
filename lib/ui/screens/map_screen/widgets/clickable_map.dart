import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_allerhands/ui/widgets/custom_dot_indicator.dart';

import 'map_pop_up_content.dart';

class ClickableMap extends StatelessWidget {
  final String mapImage;
  final VoidCallback onPressed;

  const ClickableMap(
      {Key? key,
      required this.mapImage,
      required this.onPressed,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                        contentPadding: EdgeInsets.symmetric(vertical: 50),
                        content: MapPopUpContent(),
                      ));
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(mapImage),
            ),
          ),
        ),
        SizedBox(height: 50.h),
        //т.к оно идёт не стаком, то решил добавть пагинацию просто картинку,
        //т.к не будет видно смены индикатора
        // CustomDotIndicator(
        //     pageController: pageController,
        //     dotCount: 3
        // ),
      ],
    );
  }
}
