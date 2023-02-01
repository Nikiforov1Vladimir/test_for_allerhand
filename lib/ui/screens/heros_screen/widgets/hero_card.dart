import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/heros_screen/widgets/hero_pop_up_dialog_content.dart';
import 'package:test_allerhands/utils/constants/strings.dart';

class HeroCard extends StatelessWidget {

  final String image;

  const HeroCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          child: InkWell(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    content: HeroPopUpDialogContent(
                      fio: AppStrings.fio,
                      position: AppStrings.position,
                      image: image,
                    ),
                  ),
                  barrierDismissible: true
              );
            },
            child: Container(
              height: 300.w,
              width: 300.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image)
                )
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
            AppStrings.fio,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium
        ),
        Text(
            AppStrings.position,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall
        )
      ],
    );
  }
}
