import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:repo_case/repo_case.dart';

@repoCase
abstract class UserRepository {
  Future<Either<Failure, IList<WeightData>>> getWeightList();
  Future<Either<Failure, WeightData>> updateWeight(double weight);
  Future<Either<Failure, IMap<DateTime, SleepData>>> getSleepList();
  Future<Either<Failure, Tuple2<DateTime, SleepData>>> updateSleep(
      DateTime date, SleepData sleepData);
}
