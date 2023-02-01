import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/widgets/app_material_button.dart';
import 'package:test_allerhands/utils/constants/icons.dart';

import 'leading_icon.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Widget? action;

  const AppBarTitle({Key? key, required this.title, this.subTitle, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LeadingIcon(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            //FIXME отредачить
            subTitle == null
                ? SizedBox()
                : Text(
                    subTitle!,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontStyle: FontStyle.normal),
                  )
          ],
        ),
        const Spacer(),
        action ?? SizedBox(),
      ],
    );
  }
}
