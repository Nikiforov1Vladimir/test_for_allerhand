// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../ui/screens/hero_info_screen/hero_info_screen.dart' as _i4;
import '../../ui/screens/heros_screen/heros_screen.dart' as _i3;
import '../../ui/screens/home_screen/home_screen.dart' as _i1;
import '../../ui/screens/map_screen/map_screen.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    MapScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MapScreen(),
      );
    },
    HerosScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HerosScreen(),
      );
    },
    HeroInfoScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HeroInfoScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'hero_info_screen',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          HomeScreenRoute.name,
          path: 'home_screen',
        ),
        _i5.RouteConfig(
          MapScreenRoute.name,
          path: 'map_screen',
        ),
        _i5.RouteConfig(
          HerosScreenRoute.name,
          path: 'heros_screen',
        ),
        _i5.RouteConfig(
          HeroInfoScreenRoute.name,
          path: 'hero_info_screen',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i5.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home_screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.MapScreen]
class MapScreenRoute extends _i5.PageRouteInfo<void> {
  const MapScreenRoute()
      : super(
          MapScreenRoute.name,
          path: 'map_screen',
        );

  static const String name = 'MapScreenRoute';
}

/// generated route for
/// [_i3.HerosScreen]
class HerosScreenRoute extends _i5.PageRouteInfo<void> {
  const HerosScreenRoute()
      : super(
          HerosScreenRoute.name,
          path: 'heros_screen',
        );

  static const String name = 'HerosScreenRoute';
}

/// generated route for
/// [_i4.HeroInfoScreen]
class HeroInfoScreenRoute extends _i5.PageRouteInfo<void> {
  const HeroInfoScreenRoute()
      : super(
          HeroInfoScreenRoute.name,
          path: 'hero_info_screen',
        );

  static const String name = 'HeroInfoScreenRoute';
}
