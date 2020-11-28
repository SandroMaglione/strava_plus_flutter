import 'package:mobile_polimi_project/env/env.dart';
import 'package:mobile_polimi_project/env/environment_setup.dart';

/// Configure reading of environment variables
abstract class EnvReader {
  static EnvironmentSetup _environment;

  /// Initialize environment variables
  static void initialize([
    EnvironmentSetup environment = const EnvironmentSetup.prod(),
  ]) =>
      _environment = environment;

  /// Get current environment key
  static String get key => _environment.when(
        prod: () => ProdEnv.key,
        dev: () => DevEnv.key,
      );

  /// Get current environment api base url
  static String get apiBaseUrl => _environment.when(
        prod: () => ProdEnv.apiBaseUrl,
        dev: () => DevEnv.apiBaseUrl,
      );
}
