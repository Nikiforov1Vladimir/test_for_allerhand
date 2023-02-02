import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_allerhands/data/models/room_legend.dart';
import 'package:test_allerhands/ui/screens/map_screen/widgets/clickable_map.dart';

class PageViewComponent extends StatelessWidget {
  final String mapImage;
  final List<RoomLegend> roomsLegend;

  const PageViewComponent(
      {Key? key, required this.mapImage, required this.roomsLegend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 150.w),
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
            child: Center(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: roomsLegend.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15.h,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Builder(
                                builder: (context) {
                                  if (roomsLegend[index].number != null) {
                                    return Text(roomsLegend[index].number!);
                                  }
                                  if (roomsLegend[index].icons != null) {
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: roomsLegend[index]
                                          .icons!
                                          .map((e) => SizedBox(
                                              height: 60.w,
                                              width: 60.w,
                                              child: SvgPicture.asset(e)))
                                          .toList(),
                                    );
                                  }
                                  //SvgPicture.asset(roomsLegend[index].icons![0])
                                  else {
                                    return const SizedBox();
                                  }
                                },
                              )),
                        ),
                        SizedBox(width: 30.w),
                        Flexible(
                          flex: 7,
                          child: Text(
                            roomsLegend[index].description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
