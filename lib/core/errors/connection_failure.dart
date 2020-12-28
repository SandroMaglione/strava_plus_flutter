import 'package:mobile_polimi_project/core/errors/failure.dart';

/// [Failure] for missing connection
class ConnectionFailure extends Failure {
  const ConnectionFailure();

  @override
  String get errorMessage => "No internet";
}
