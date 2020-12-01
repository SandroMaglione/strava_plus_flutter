// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

import '../../app/activity/presentation/screens/detailed_activity_screen.dart';
import '../../app/goal/presentation/screens/create_goal_screen.dart';
import '../../app/goal/presentation/screens/home_screen.dart';
import '../../app/goal/presentation/screens/loading_screen.dart';
import '../../app/login/presentation/screens/login_screen.dart';

class Routes {
  static const String LoadingScreen = '/';
  static const String LoginScreen = '/login-screen';
  static const String HomeScreen = '/home-screen';
  static const String CreateGoalScreen = '/create-goal-screen';
  static const String DetailedActivityScreen = '/detailed-activity-screen';
  static const all = <String>{
    LoadingScreen,
    LoginScreen,
    HomeScreen,
    CreateGoalScreen,
    DetailedActivityScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.LoadingScreen, page: LoadingScreen),
    RouteDef(Routes.LoginScreen, page: LoginScreen),
    RouteDef(Routes.HomeScreen, page: HomeScreen),
    RouteDef(Routes.CreateGoalScreen, page: CreateGoalScreen),
    RouteDef(Routes.DetailedActivityScreen, page: DetailedActivityScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoadingScreen: (data) {
      return buildAdaptivePageRoute<AdaptiveRoute<dynamic>>(
        builder: (context) => LoadingScreen(),
        settings: data,
      );
    },
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
    CreateGoalScreen: (data) {
      return buildAdaptivePageRoute<AdaptiveRoute<dynamic>>(
        builder: (context) => CreateGoalScreen(),
        settings: data,
      );
    },
    DetailedActivityScreen: (data) {
      final args = data.getArgs<DetailedActivityScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<AdaptiveRoute<dynamic>>(
        builder: (context) => DetailedActivityScreen(
          id: args.id,
          key: args.key,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailedActivityScreen arguments holder class
class DetailedActivityScreenArguments {
  final int id;
  final Key key;
  DetailedActivityScreenArguments({@required this.id, this.key});
}
