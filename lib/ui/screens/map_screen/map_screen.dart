import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/core/navigation/app_router.gr.dart';
import 'package:test_allerhands/ui/widgets/app_bar_title.dart';
import 'package:test_allerhands/ui/widgets/app_material_button.dart';
import 'package:test_allerhands/utils/constants/icons.dart';

import 'repository/page_view_content.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarTitle(
          title: 'Карта',
          subTitle: floorNames[currentIndex],
          action: AppMaterialButton(
            onPressed: () {
              AutoRouter.of(context).push(const HerosScreenRoute());
            },
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
