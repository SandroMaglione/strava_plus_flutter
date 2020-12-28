import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/core/errors/dio_error_options.dart';

/// All error yielded throughout the app derive from this interface class
abstract class Failure extends Equatable implements Exception {
  /// Possible [Exception] thrown by the failure
  Option<Exception> get exceptionOption => none();

  /// Initialize deafult error statusCode
  const Failure();

  /// Get error message from status code
  String get errorMessage => "Error message";

  /// Define custom error message [exceptionOption] is a [DioError]
  String dioErrorMessage(DioError dioError) =>
      dioErrorOptions(dioError).maybeWhen(
        orElse: () => "Request error",
      );

  /// Convert [DioError] to [DioErrorOptions] to make sure to check all possible cases
  static DioErrorOptions dioErrorOptions(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.RESPONSE:
        return const DioErrorOptions.response();
      case DioErrorType.CONNECT_TIMEOUT:
        return const DioErrorOptions.connection_timeout();
      case DioErrorType.SEND_TIMEOUT:
        return const DioErrorOptions.send_timeout();
      case DioErrorType.RECEIVE_TIMEOUT:
        return const DioErrorOptions.receive_timeout();
      case DioErrorType.CANCEL:
        return const DioErrorOptions.cancel();
      case DioErrorType.DEFAULT:
        return const DioErrorOptions.default_error();
      default:
        return const DioErrorOptions.unknown();
    }
  }

  @override
  List<Object> get props => [exceptionOption];
}

/// [Failure] when no other specific error is defined.
///
/// Throws a generic error when no other error is recognized.
class GenericFailure extends Failure {
  final Exception exception;

  const GenericFailure(this.exception) : super();

  /// [GenericFailure] without specify exception
  const GenericFailure.unexpected() : exception = null;

  @override
  Option<Exception> get exceptionOption => some(exception);
}
