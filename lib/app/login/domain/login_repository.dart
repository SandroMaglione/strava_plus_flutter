import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/detailed_athlete.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:repo_case/repo_case.dart';

@repoCase
abstract class LoginRepository {
  const LoginRepository();

  Future<Either<Failure, DetailedAthlete>> getUserAccountInfo();
  Future<Either<Failure, Unit>> getAuthToken(String route);
  Future<Either<Failure, Unit>> logout();
}
