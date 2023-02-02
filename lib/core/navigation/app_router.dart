import 'app_router.gr.dart';

import 'package:auto_route/auto_route.dart';
import 'package:test_allerhands/ui/screens/hero_info_screen/hero_info_screen.dart';
import 'package:test_allerhands/ui/screens/heros_screen/heros_screen.dart';
import 'package:test_allerhands/ui/screens/home_screen/home_screen.dart';
import 'package:test_allerhands/ui/screens/map_screen/map_screen.dart';

@CupertinoAutoRouter(
  //replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'home_screen', page: HomeScreen),
    AutoRoute(path: 'map_screen', page: MapScreen),
    AutoRoute(path: 'heros_screen', page: HerosScreen),
    AutoRoute(path: 'hero_info_screen', page: HeroInfoScreen,initial: true)

  ],
)
class $AppRouter {}