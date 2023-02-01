import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/widgets/pop_up_button.dart';

class HeroPopUpDialogContent extends StatelessWidget {

  final String image;
  final String fio;
  final String position;

  const HeroPopUpDialogContent({Key? key, required this.fio, required this.position, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            height: 300.w,
            width: 300.w,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 30.h),
          Text(
              fio,
              style: Theme.of(context).textTheme.labelMedium
          ),
          SizedBox(height: 10.h),
          Text(
              'длинная $position',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall
          ),
          SizedBox(height: 70.h),
          PopUpButton(
            buttonText: 'Смотреть интервью',
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
