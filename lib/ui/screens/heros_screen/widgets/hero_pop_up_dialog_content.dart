import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/core/navigation/app_router.gr.dart';
import 'package:test_allerhands/ui/widgets/pop_up_button.dart';

class HeroPopUpDialogContent extends StatelessWidget {
  final String image;
  final String fio;
  final String position;

  const HeroPopUpDialogContent(
      {Key? key,
      required this.fio,
      required this.position,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Image.asset(
            image,
            height: 360.w,
            width: 360.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          fio,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 10.h),
        Text('длинная $position',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelSmall),
        SizedBox(height: 20.h),
        Text('Lorem Ipsum',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelSmall
        ),
        SizedBox(height: 50.h),
        Center(
          child: PopUpButton(
            buttonText: 'Смотреть интервью',
            horizontalPadding: 50.w,
            onPressed: () {
              AutoRouter.of(context).push(const HeroInfoScreenRoute());
            },
          ),
        )
      ],
    );
  }
}
