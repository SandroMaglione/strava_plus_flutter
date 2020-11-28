import 'package:injectable/injectable.dart';

/// List of api endpoints
abstract class ApiConstants {
  /// Default constructor
  const ApiConstants();

  /// Define an api endpoint
  String get apiEndpoint;
}

/// List of api endpoints production app
@Injectable(
  as: ApiConstants,
)
class ApiConstantsProduction implements ApiConstants {
  /// Default constructor
  const ApiConstantsProduction();

  @override
  // Add api endpoint name
  String get apiEndpoint => throw UnimplementedError();
}
