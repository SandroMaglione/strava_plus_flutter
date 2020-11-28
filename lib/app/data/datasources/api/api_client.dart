import 'package:dio/dio.dart';
import 'package:mobile_polimi_project/env/env_reader.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Register the [Dio] http client
@module
abstract class RegisterDioClient {
  /// Get [Dio] instance
  Dio get dioClient => Dio(
        BaseOptions(
          baseUrl: EnvReader.apiBaseUrl,
          connectTimeout: 15000,
          receiveTimeout: 25000,
          contentType: "application/json",
        ),
      )..interceptors.addAll(
          <Interceptor>[
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: true,
              error: true,
              compact: false,
              maxWidth: 90,
            ),
          ],
        );
}
