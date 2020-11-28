import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart' as auto_route;
import 'package:mobile_polimi_project/env/environment_setup.dart';

/// Entry class of the application
class MyApp extends StatelessWidget {
  /// Environment in which the app is running
  final EnvironmentSetup environment;

  /// Initialize app environment
  const MyApp({
    @required this.environment,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppName',
      debugShowCheckedModeBanner: false,
      // Navigation Routes
      builder: ExtendedNavigator<auto_route.Router>(
        router: auto_route.Router(),
        guards: <RouteGuard>[
          // Insert guards
        ],
      ),
      // Provide the app theme
      // theme: state.themeData,
      // Analytics (screen views event)
      navigatorObservers: <NavigatorObserver>[
        // Setup navigator analytics
      ],
    );
  }
}
