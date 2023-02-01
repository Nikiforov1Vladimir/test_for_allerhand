import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/heros_screen/repository/profile_pics.dart';
import 'package:test_allerhands/ui/screens/heros_screen/widgets/hero_card.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';

class HerosScreen extends StatelessWidget {
  const HerosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarTitle(
          title: 'Все герои',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 350.w
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Название этажа',style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: firstFloorProfilePics.length,
                  separatorBuilder: (context,index){
                    return SizedBox(width: 20.w);
                  },
                  itemBuilder: (context,index) => HeroCard(
                    image: firstFloorProfilePics[index],
                  )
              ),
            ),
            SizedBox(height: 20.h),
            Text('Название этажа',style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: secondFloorProfilePics.length,
                  separatorBuilder: (context,index){
                    return SizedBox(width: 20.w);
                  },
                  itemBuilder: (context,index) => HeroCard(
                    image: secondFloorProfilePics[index],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
