import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'dio_error_options.freezed.dart';

@freezed
abstract class DioErrorOptions with _$DioErrorOptions {
  const factory DioErrorOptions.response() = ResponseDioErrorOptions;
  const factory DioErrorOptions.connection_timeout() =
      ConnectionTimeoutDioErrorOptions;
  const factory DioErrorOptions.send_timeout() = SendTimeoutDioErrorOptions;
  const factory DioErrorOptions.receive_timeout() =
      ReceiveTimeoutDioErrorOptions;
  const factory DioErrorOptions.cancel() = CancelDioErrorOptions;
  const factory DioErrorOptions.default_error() = DefaultErrorDioErrorOptions;
  const factory DioErrorOptions.unknown() = UnknownDioErrorOptions;
}
