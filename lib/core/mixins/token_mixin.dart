import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_polimi_project/app/login/data/models/auth_token.dart';

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
          (authToken) => '${authToken.token_type} ${authToken.access_token}',
        ),
      );

  /// Read token from local storage
  Future<Option<AuthToken>> getToken(
    FlutterSecureStorage flutterSecureStorage,
  ) async =>
      optionOf(
        AuthToken.fromJson(
          json.decode(
            await flutterSecureStorage.read(
              key: stravaApiTokenKey,
            ),
          ) as Map<String, dynamic>,
        ),
      );

  Future<Unit> saveToken(
    AuthToken authToken,
    FlutterSecureStorage flutterSecureStorage,
  ) =>
      flutterSecureStorage
          .write(
            key: stravaApiTokenKey,
            value: json.encode(authToken.toJson()),
          )
          .then((_) => unit);
}
