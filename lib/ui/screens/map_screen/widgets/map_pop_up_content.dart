import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/core/navigation/app_router.gr.dart';
import 'package:test_allerhands/ui/screens/heros_screen/widgets/hero_card.dart';
import 'package:test_allerhands/ui/screens/map_screen/repository/heros_on_the_floor.dart';
import 'package:test_allerhands/ui/widgets/pop_up_button.dart';

import '../../../../utils/constants/colors.dart';

class MapPopUpContent extends StatelessWidget {
  const MapPopUpContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1150.w,
      height: 600.h,
      child:
      Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 90.w),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: AppColors.black,
                        width: 4.w,
                      )),
                      child: Center(
                        child: Text('4',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: AppColors.blue, fontSize: 30.sp)),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    const Expanded(
                        child: AutoSizeText(
                      'Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet',
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: herosOnTheFloor.length,
                  padding:  EdgeInsets.symmetric(horizontal: 90.w),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        HeroCard(image: herosOnTheFloor[index]),
                        SizedBox(height: 20.h),
                        PopUpButton(
                            horizontalPadding: 40,
                            buttonText: 'Выбрать',
                            onPressed: () {
                              AutoRouter.of(context).push(HeroInfoScreenRoute());
                            })
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 30.w);
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: (){},
                iconSize: 50,
                icon: const Icon(Icons.arrow_forward_ios_rounded)
            ),
          )
        ],
      ),
    );
  }
}
