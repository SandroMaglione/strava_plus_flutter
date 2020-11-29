import 'package:auto_route/auto_route_annotations.dart';
import 'package:mobile_polimi_project/app/activity/presentation/screens/detailed_activity_screen.dart';
import 'package:mobile_polimi_project/app/goal/presentation/screens/home_screen.dart';
import 'package:mobile_polimi_project/app/login/presentation/screens/login_screen.dart';

/// Routing navigation manager class.
/// Used to handle screen navigation.
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<AdaptiveRoute>(
        page: LoginScreen, initial: true, name: "LoginScreen"),
    AdaptiveRoute<AdaptiveRoute>(page: HomeScreen, name: "HomeScreen"),
    AdaptiveRoute<AdaptiveRoute>(
        page: DetailedActivityScreen, name: "DetailedActivityScreen"),
  ],
)
class $Router {}
