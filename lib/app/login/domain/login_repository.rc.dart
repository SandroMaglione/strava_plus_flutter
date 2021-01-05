// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:mobile_polimi_project/app/athlete/domain/entities/detailed_athlete.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/login/domain/login_repository.dart';

class GetUserAccountInfoRepo {
  final LoginRepository loginRepository;

  const GetUserAccountInfoRepo({
    @required this.loginRepository,
  });

  Future<Either<Failure, DetailedAthlete>> call() async {
    return loginRepository.getUserAccountInfo();
  }
}

class GetAuthTokenRepo {
  final LoginRepository loginRepository;

  const GetAuthTokenRepo({
    @required this.loginRepository,
  });

  Future<Either<Failure, Unit>> call(GetAuthTokenRepoParams params) async {
    return loginRepository.getAuthToken(
      params.route,
    );
  }
}

class GetAuthTokenRepoParams {
  final String route;

  const GetAuthTokenRepoParams({
    @required this.route,
  });
}

class LogoutRepo {
  final LoginRepository loginRepository;

  const LogoutRepo({
    @required this.loginRepository,
  });

  Future<Either<Failure, Unit>> call() async {
    return loginRepository.logout();
  }
}
