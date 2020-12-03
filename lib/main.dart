import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/login/presentation/controllers/cubit/login_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart' as auto_route;
import 'package:mobile_polimi_project/env/environment_setup.dart';
import 'package:mobile_polimi_project/injectable.dart';

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
    return BuildProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => getIt<ThemeCubit>(),
        ),
        BlocProvider<LoginCubit>(
          create: (context) => getIt<LoginCubit>()..init(),
        ),
        BlocProvider<ActivityListCubit>(
          create: (context) => getIt<ActivityListCubit>(),
        ),
      ],
      builder: (context) {
        final theme = context.watch<ThemeCubit>().state;

        return MaterialApp(
          title: 'MobileStrava',
          theme: theme.themeData,
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
      },
    );
  }
}
