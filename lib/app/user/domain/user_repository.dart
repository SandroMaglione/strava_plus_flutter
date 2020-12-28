import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:repo_case/repo_case.dart';

@repoCase
abstract class UserRepository {
  Future<Either<Failure, IList<KeyWeightData>>> getWeightList();
  Future<Either<Failure, IList<KeyWeightData>>> updateWeight(double weight);
  Future<Either<Failure, IList<KeyWeightData>>> changeWeight(
      int index, double weight, DateTime dateTime);
  Future<Either<Failure, IList<KeyWeightData>>> deleteWeight(int index);

  Future<Either<Failure, IMap<DateTime, SleepData>>> getSleepList();
  Future<Either<Failure, Tuple2<DateTime, SleepData>>> updateSleep(
      DateTime date, SleepData sleepData);

  Future<Either<Failure, IMap<DateTime, DietData>>> getDietList();
  Future<Either<Failure, Tuple2<DateTime, DietData>>> updateDiet(
      DateTime date, DietData dietData);

  Future<Either<Failure, IMap<DateTime, WaterData>>> getWaterList();
  Future<Either<Failure, Tuple2<DateTime, WaterData>>> updateWater(
      DateTime date, WaterData waterData);
}
