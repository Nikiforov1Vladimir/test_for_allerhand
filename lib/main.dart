import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/core/navigation/app_router.gr.dart';
import 'package:test_allerhands/core/theme/theme.dart';
import 'package:test_allerhands/ui/screens/heros_screen/heros_screen.dart';
import 'package:test_allerhands/ui/screens/home_screen/home_screen.dart';
import 'package:test_allerhands/ui/screens/map_screen/map_screen.dart';

import 'ui/screens/hero_info_screen/hero_info_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(1920, 1200),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const HeroInfoScreen(),
          // routerDelegate: _appRouter.delegate(),
          // routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
