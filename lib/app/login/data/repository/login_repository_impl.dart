import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/activity_stats.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/detailed_athlete.dart';
import 'package:mobile_polimi_project/app/login/domain/login_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  const LoginRepositoryImpl();

  @override
  Future<Either<Failure, DetailedAthlete>> getUserAccountInfo() {
    // TODO: implement getUserAccountInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ActivityStats>> getUserAccountStats() {
    // TODO: implement getUserAccountStats
    throw UnimplementedError();
  }
}
