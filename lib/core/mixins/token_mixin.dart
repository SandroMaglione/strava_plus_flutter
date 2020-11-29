import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

mixin TokenMixin {
  /// Key of the locally stored token to access Stava API
  static const String stravaApiTokenKey = "STRAVA_API_TOKEN";

  /// Callback function to request token using [FlutterSecureStorage]
  Future<T> tokenRequest<T>(
    Future<T> Function(String) request,
    FlutterSecureStorage flutterSecureStorage,
  ) async =>
      request(
        (await getToken(
          flutterSecureStorage,
        ))
            .fold(
          () => throw Exception(
            "Missing token, impossible to complete the request",
          ),
          id,
        ),
      );

  /// Read token from local storage
  Future<Option<String>> getToken(
    FlutterSecureStorage flutterSecureStorage,
  ) async =>
      optionOf(
        await flutterSecureStorage.read(
          key: stravaApiTokenKey,
        ),
      );

  /// Write token in local storage
  Future<Unit> setToken(
    String token,
    FlutterSecureStorage flutterSecureStorage,
  ) async =>
      flutterSecureStorage
          .write(
            key: stravaApiTokenKey,
            value: token,
          )
          .then((_) => unit);
}
