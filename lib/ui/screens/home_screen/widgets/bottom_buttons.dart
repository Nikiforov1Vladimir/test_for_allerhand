import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/core/navigation/app_router.gr.dart';
import 'package:test_allerhands/ui/screens/home_screen/repository/instructionPopUpContent.dart';
import 'package:test_allerhands/ui/screens/home_screen/widgets/info_pop_up_dialog_content.dart';
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
          onPressed: () {
            AutoRouter.of(context).push(const MapScreenRoute());
          },
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
            onPressed: () => showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  content: InfoPopUpDialogContent(
                    instructionPopUpContent: instructionPopUpContent,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                ),
            ),
            title: 'Инструкция',
            icon: AppIcons.chatIcon,
          ),
        )
      ],
    );
  }
}
