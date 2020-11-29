// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import '../../app/goal/presentation/screens/home_screen.dart';
import '../../app/login/presentation/screens/login_screen.dart';

class Routes {
  static const String LoginScreen = '/';
  static const String HomeScreen = '/home-screen';
  static const all = <String>{
    LoginScreen,
    HomeScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.LoginScreen, page: LoginScreen),
    RouteDef(Routes.HomeScreen, page: HomeScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginScreen: (data) {
      return buildAdaptivePageRoute<AdaptiveRoute<dynamic>>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return buildAdaptivePageRoute<AdaptiveRoute<dynamic>>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
  };
}
