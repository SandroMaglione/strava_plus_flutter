import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/activity_stats.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/detailed_athlete.dart';
import 'package:mobile_polimi_project/app/login/domain/login_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/login/data/datasource/remote/login_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/errors/login_failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:mobile_polimi_project/core/mixins/token_mixin.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl with TokenMixin implements LoginRepository {
  final LoginRemoteDataSource _loginRemoteDataSource;
  final FlutterSecureStorage _flutterSecureStorage;

  LoginRepositoryImpl(
    this._loginRemoteDataSource,
    this._flutterSecureStorage,
  );

  @override
  Future<Either<Failure, DetailedAthlete>> getUserAccountInfo() async => Task(
        () async => tokenRequest(
          (token) => _loginRemoteDataSource.getStravaAthlete(token),
          _flutterSecureStorage,
        ),
      ).runAll();

  @override
  Future<Either<Failure, ActivityStats>> getUserAccountStats() {
    // TODO: implement getUserAccountStats
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> getAuthToken(String route) async =>
      Task(() async {
        final uri = Uri.dataFromString(route);
        final uriParams = uri.queryParameters;
        if (uriParams['code'] == null) {
          throw const LoginFailure(0, null);
        } else {
          final authToken = await _loginRemoteDataSource.getAuthToken(
            56765,
            "f62a13334825184b1c40e997b839641ec83420fb",
            uriParams['code'],
            "authorization_code",
          );
          return saveToken(authToken, _flutterSecureStorage);
        }
      }).runAll();
}