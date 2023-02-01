import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_allerhands/ui/screens/map_screen/repository/floors_legend.dart';
import 'package:test_allerhands/ui/screens/map_screen/widgets/clickable_map.dart';

class PageViewComponent extends StatelessWidget {
  final String mapImage;

  const PageViewComponent({Key? key, required this.mapImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 180.w),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClickableMap(
                    mapImage: mapImage,
                    onPressed: () {},
                  ),
                  //Я думал здесь вставить индикатор,
                  // но не понял зачем он нужен, если свайпается всё, а не только карта,
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.separated(
                itemCount: firstFloorLegend.length,
                separatorBuilder: (context,index){
                  return SizedBox(height: 10.h,);
                },
                itemBuilder: (context,index){
                  return Text(
                    '${index + 1}  ${firstFloorLegend[index]}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  );
                }
            ),
          ))
        ],
      ),
    );
  }
}
