import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Register the [Dio] http client
@module
abstract class RegisterDioClient {
  /// Get [Dio] instance
  Dio get dioClient => Dio(
        BaseOptions(
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

/// Register injectable [FlutterSecureStorage]
@module
abstract class RegisterFlutterSecureStorage {
  /// Get sync [FlutterSecureStorage]
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();
}
