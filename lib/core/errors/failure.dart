import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

/// All error yielded throughout the app derive from this interface class
abstract class Failure extends Equatable {
  /// Status code to to display error message to the user when a failure occurs
  final int statusCode;

  /// Error type of an http [Dio] request
  final DioErrorType dioErrorType;

  /// Initialize deafult error statusCode
  const Failure({
    this.statusCode = -1,
    this.dioErrorType = DioErrorType.RESPONSE,
  });

  /// Get error message from failure
  String get errorMessage {
    // Compute error message based on status code and error type
    return 'Error message';
  }

  /// Used in subclasses to return custom error message in case of [DioErrorType.RESPONSE]
  String customErrorMessage(String Function() customError) =>
      dioErrorType == DioErrorType.RESPONSE ? customError() : errorMessage;

  @override
  List<Object> get props => [statusCode];
}

/// Generic [Failure] handler when no other error is recognized
class GenericFailure extends Failure {
  /// Initialize status code.
  /// A status code of `-1` is the default for an unexpected error.
  const GenericFailure(int statusCode) : super(statusCode: statusCode);

  /// Throws a generic error when no other error is recognized
  const GenericFailure.unexpected();

  @override
  String get errorMessage => this.customErrorMessage(
        () {
          // Return a custom error based on status code
          // otherwise call generic error in super class
          switch (statusCode) {
            default:
              return super.errorMessage;
          }
        },
      );
}
