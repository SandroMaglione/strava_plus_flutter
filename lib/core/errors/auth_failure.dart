import 'package:mobile_polimi_project/core/errors/failure.dart';

/// [Failure] for missing Strava authentication
class AuthFailure extends Failure {
  const AuthFailure();

  @override
  String get errorMessage => "Strava authorization required";
}
