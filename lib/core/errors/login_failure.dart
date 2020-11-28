import 'package:dio/dio.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

/// [Failure] when an error during the login process occurs
class LoginFailure extends Failure {
  /// Initialize error statusCode
  const LoginFailure(
    int statusCode,
    DioErrorType dioErrorType,
  ) : super(
          statusCode: statusCode,
          dioErrorType: dioErrorType,
        );

  @override
  String get errorMessage => this.customErrorMessage(
        () {
          return super.errorMessage;
        },
      );
}
