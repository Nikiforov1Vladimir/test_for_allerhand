import 'package:flutter/material.dart';
import 'package:test_allerhands/ui/screens/map_screen/widgets/page_view_component.dart';

import 'floors_legend.dart';

List<Widget> pageViewContent = [
  PageViewComponent(
    mapImage: 'assets/images/map_ground_floor.png',
    roomsLegend: groundFloorLegend,
  ),
  PageViewComponent(
    mapImage: 'assets/images/map_first_floor.png',
    roomsLegend: firstFloorLegend,
  ),
  PageViewComponent(
    mapImage: 'assets/images/map_second_floor.png',
    roomsLegend: secondFloorLegend,
  ),
];