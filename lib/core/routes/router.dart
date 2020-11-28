import 'package:auto_route/auto_route_annotations.dart';
import 'package:mobile_polimi_project/app/presentation/screens/example_screen.dart';

/// Routing navigation manager class.
/// Used to handle screen navigation.
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<AdaptiveRoute>(
        page: ExampleScreen, initial: true, name: "ExampleScreen"),
  ],
)
class $Router {}
