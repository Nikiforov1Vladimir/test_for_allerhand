import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/screens/map_screen/widgets/page_view_component.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';
import 'package:test_allerhands/ui/widgets/app_material_button.dart';
import 'package:test_allerhands/ui/widgets/leading_icon.dart';
import 'package:test_allerhands/ui/widgets/title_row.dart';
import 'package:test_allerhands/utils/constants/icons.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int currentIndex = 1;

  List<String> floorNames = [
    'Цокольный этаж',
    'Первый этаж',
    'Второй этаж',
  ];

  List<Widget> pageViewContent = [
    PageViewComponent(
      mapImage: 'assets/images/map_ground_floor.png',
    ),
    PageViewComponent(
      mapImage: 'assets/images/map_first_floor.png',
    ),
    PageViewComponent(
      mapImage: 'assets/images/map_second_floor.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Карта',
          subTitle: floorNames[currentIndex],
          action: AppMaterialButton(
            onPressed: () {},
            title: 'Все герои',
            icon: AppIcons.groupIcon,
            height: 80.h,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: pageViewContent,
            ),
          ),
        ],
      ),
    );
  }
}
