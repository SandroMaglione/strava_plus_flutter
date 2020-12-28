import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/detailed_athlete.dart';
import 'package:mobile_polimi_project/app/login/domain/login_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/login/data/datasource/remote/login_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/services/connection_checker.dart';
import 'package:mobile_polimi_project/core/services/token_manager.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource _loginRemoteDataSource;
  final TokenManager _tokenManager;
  final ConnectionChecker _connectionChecker;

  LoginRepositoryImpl(
    this._loginRemoteDataSource,
    this._tokenManager,
    this._connectionChecker,
  );

  @override
  Future<Either<Failure, DetailedAthlete>> getUserAccountInfo() async =>
      _connectionChecker.connectionCheck(
        connectionAvailable: () async => _tokenManager.tokenRequest(
          (token) => token.fold(
            () => throw const GenericFailure.unexpected(),
            (token) => _loginRemoteDataSource.getStravaAthlete(token),
          ),
        ),
      );

  @override
  Future<Either<Failure, Unit>> getAuthToken(String route) async =>
      _connectionChecker.connectionCheck(connectionAvailable: () async {
        final uri = Uri.dataFromString(route);
        final uriParams = uri.queryParameters;
        if (uriParams['code'] == null) {
          throw const GenericFailure.unexpected();
        } else {
          final authToken = await _loginRemoteDataSource.getAuthToken(
            56765,
            "f62a13334825184b1c40e997b839641ec83420fb",
            uriParams['code'],
            "authorization_code",
          );
          return _tokenManager.saveToken(authToken);
        }
      });
}
