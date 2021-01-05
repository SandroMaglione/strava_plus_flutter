import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/app/login/data/datasource/remote/login_remote_data_source.dart';
import 'package:mobile_polimi_project/app/login/data/models/auth_token.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

abstract class TokenManager {
  /// Key of the locally stored token to access Stava API
  static const String stravaApiTokenKey = "STRAVA_API_TOKEN";

  /// Callback function to request token using [FlutterSecureStorage]
  Future<T> tokenRequest<T>(Future<T> Function(Option<String>) request);

  /// Read token from local storage
  Future<Option<AuthToken>> getToken();

  Future<Unit> saveToken(AuthToken authToken);
  Future<Unit> removeToken();
}

@Injectable(as: TokenManager)
class TokenManagerFlutterSecureStorage implements TokenManager {
  final FlutterSecureStorage _flutterSecureStorage;
  final LoginRemoteDataSource _loginRemoteDataSource;

  const TokenManagerFlutterSecureStorage(
    this._flutterSecureStorage,
    this._loginRemoteDataSource,
  );

  @override
  Future<T> tokenRequest<T>(Future<T> Function(Option<String>) request) async =>
      request(
        (await getToken()).fold(
          () => none(),
          (authToken) => some(
            '${authToken.token_type} ${authToken.access_token}',
          ),
        ),
      );

  @override
  Future<Option<AuthToken>> getToken() async {
    final localToken = await _flutterSecureStorage.read(
      key: TokenManager.stravaApiTokenKey,
    );

    if (localToken == null) {
      return none();
    } else {
      final authToken = AuthToken.fromJson(
        json.decode(localToken) as Map<String, dynamic>,
      );

      if (authToken.expires_at < DateTime.now().millisecondsSinceEpoch / 1000) {
        return (await refreshToken(authToken.refresh_token)).fold(
          (failure) => none(),
          (authToken) => some(authToken),
        );
      } else {
        return some(authToken);
      }
    }
  }

  @override
  Future<Unit> saveToken(AuthToken authToken) => _flutterSecureStorage
      .write(
        key: TokenManager.stravaApiTokenKey,
        value: json.encode(authToken.toJson()),
      )
      .then((_) => unit);

  Future<Either<Failure, AuthToken>> refreshToken(String refreshToken) async =>
      Task(
        () async => _loginRemoteDataSource.getRefreshToken(
          56765,
          "f62a13334825184b1c40e997b839641ec83420fb",
          refreshToken,
          "refresh_token",
        ),
      ).runAll();

  @override
  Future<Unit> removeToken() =>
      _flutterSecureStorage.deleteAll().then((_) => unit);
}
