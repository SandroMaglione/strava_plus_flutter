import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/data/datasource/local/user_local_data_source.dart';
import 'package:mobile_polimi_project/app/user/data/models/weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/errors/login_failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSourceImpl _userLocalDataSourceImpl;

  UserRepositoryImpl(this._userLocalDataSourceImpl);

  @override
  Future<Either<Failure, IList<WeightData>>> getWeightList() async => Task(
        () async => ilist(await _userLocalDataSourceImpl.getWeightList()),
      ).runAll();

  @override
  Future<Either<Failure, WeightData>> updateWeight(double weight) async => Task(
        () async => _userLocalDataSourceImpl.updateWeight(
          WeightDataModel(
            dateTime: DateTime.now(),
            value: weight,
          ),
        ),
      ).runAll();

  @override
  Future<Either<Failure, IMap<DateTime, SleepData>>> getSleepList() async =>
      Task(
        () async => _userLocalDataSourceImpl.getSleepList(),
      ).runAll();

  @override
  Future<Either<Failure, Tuple2<DateTime, SleepData>>> updateSleep(
          DateTime date, SleepData sleepData) async =>
      Task(
        () async {
          if (sleepData.sleepTime.sleepOption.isNone()) {
            throw const LoginFailure(0, null);
          } else {
            return _userLocalDataSourceImpl.updateSleep(
              date,
              sleepData.toModel,
            );
          }
        },
      ).runAll();

  @override
  Future<Either<Failure, IMap<DateTime, DietData>>> getDietList() async => Task(
        () async => _userLocalDataSourceImpl.getDietList(),
      ).runAll();

  @override
  Future<Either<Failure, Tuple2<DateTime, DietData>>> updateDiet(
          DateTime date, DietData dietData) async =>
      Task(
        () async => _userLocalDataSourceImpl.updateDiet(
          date,
          dietData.toModel,
        ),
      ).runAll();

  @override
  Future<Either<Failure, IMap<DateTime, WaterData>>> getWaterList() async =>
      Task(
        () async => _userLocalDataSourceImpl.getWaterList(),
      ).runAll();

  @override
  Future<Either<Failure, Tuple2<DateTime, WaterData>>> updateWater(
          DateTime date, WaterData waterData) async =>
      Task(
        () async {
          if (waterData.water.water.isNone()) {
            throw const LoginFailure(0, null);
          } else {
            return _userLocalDataSourceImpl.updateWater(
              date,
              waterData.toModel,
            );
          }
        },
      ).runAll();
}
