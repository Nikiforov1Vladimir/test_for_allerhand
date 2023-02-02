import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:test_allerhands/utils/constants/colors.dart';
import 'package:test_allerhands/utils/constants/strings.dart';

class HeroDescription extends StatelessWidget {
  const HeroDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 950.w,
      child: Row(
        children: [
          Container(
            width: 6,
            color: AppColors.blue,
          ),
          SizedBox(width: 30.w),
          Expanded(
              child: ReadMoreText(
                AppStrings.heroScreenDescription,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontStyle: FontStyle.italic
                ),
                trimCollapsedText: '\nЧитать полностью',
                trimExpandedText: ' Свернуть',
                moreStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!.copyWith(
                    fontStyle: FontStyle.normal,
                    color: AppColors.blue
                ),
                lessStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!.copyWith(
                    fontStyle: FontStyle.normal,
                    color: AppColors.blue
                ),
              )
          )
        ],
      ),
    );
  }
}
