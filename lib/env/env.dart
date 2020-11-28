import 'package:envify/envify.dart';

part 'env.g.dart';

/// Environment variables for development
@Envify(path: '.env.development')
abstract class DevEnv {
  /// General key
  static const key = _DevEnv.key;

  /// Base url for api endpoints
  static const apiBaseUrl = _DevEnv.apiBaseUrl;
}

/// Environment variables for production
@Envify(path: '.env.production')
abstract class ProdEnv {
  /// General key
  static const key = _ProdEnv.key;

  /// Base url for api endpoints
  static const apiBaseUrl = _ProdEnv.apiBaseUrl;
}
