import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/core/services/hive_manager.dart';
import 'package:mobile_polimi_project/env/environment_setup.dart';
import 'package:mobile_polimi_project/injectable.dart';
import 'package:mobile_polimi_project/main.dart';

/// Startup main file for both dev and prod environments
Future<void> mainCommon(
  Future<void> Function() runSetup, [
  EnvironmentSetup environment = const EnvironmentSetup.prod(),
]) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialze config reader with the given environment
  // EnvReader.initialize(environment);

  // Initialize injectable dependency injection objects (injectable)
  configureInjectable();

  // Initialize Hive boxes
  getIt<HiveManager>().initialize();

  /// Extra functions to run based on the environment
  await runSetup();

  // Run app with errors catching
  runZonedGuarded(
    () => runApp(
      MyApp(environment: environment),
    ),
    (error, stackTrace) async {
      // Report errors
    },
  );
}
