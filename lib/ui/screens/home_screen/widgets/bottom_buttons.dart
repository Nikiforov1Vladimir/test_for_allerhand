import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/core/navigation/hero_pop_up_route.dart';
import 'package:test_allerhands/ui/widgets/app_material_button.dart';
import 'package:test_allerhands/utils/constants/colors.dart';
import 'package:test_allerhands/utils/constants/icons.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                       Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppMaterialButton(
          onPressed: () {},
          title: 'О нас',
          icon: AppIcons.infoIcon,
        ),
        SizedBox(width: 50.w),
        AppMaterialButton(
          onPressed: () {},
          title: 'Карта',
          icon: AppIcons.mapIcon,
          iconColor: AppColors.white,
          buttonColor: AppColors.blue,
          width: 300.w,
        ),
        SizedBox(width: 50.w),
        Hero(
          tag: 'instruction_button',
          child: AppMaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                  HeroPopUpRoute(
                    builder: (context){
                      return Container(width: 90,height: 90,color: AppColors.grey,);
                    },
                  )
              );
            },
            title: 'Инструкция',
            icon: AppIcons.chatIcon,
          ),
        )
      ],
    );
  }
}
