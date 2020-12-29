import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/data/datasource/local/user_local_data_source.dart';
import 'package:mobile_polimi_project/app/user/data/models/key_weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/services/connection_checker.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSourceImpl _userLocalDataSourceImpl;
  final ConnectionChecker _connectionChecker;

  UserRepositoryImpl(this._userLocalDataSourceImpl, this._connectionChecker);

  @override
  Future<Either<Failure, IList<KeyWeightData>>> getWeightList() async =>
      _connectionChecker.failureCheck(
        () async => _ilistWeight(),
      );

  @override
  Future<Either<Failure, IList<KeyWeightData>>> updateWeight(
          double weight) async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl
            .updateWeight(
              WeightDataModel(
                dateTime: DateTime.now(),
                value: weight,
              ),
            )
            .then((_) => _ilistWeight()),
      );

  @override
  Future<Either<Failure, IList<KeyWeightData>>> changeWeight(
    int index,
    double weight,
    DateTime dateTime,
  ) async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl
            .changeWeight(
              KeyWeightDataModel(
                index: index,
                dateTime: dateTime,
                value: weight,
              ),
            )
            .then((_) => _ilistWeight()),
      );

  @override
  Future<Either<Failure, IList<KeyWeightData>>> deleteWeight(int index) async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl
            .deleteWeight(index)
            .then((_) => _ilistWeight()),
      );

  @override
  Future<Either<Failure, IMap<DateTime, SleepData>>> getSleepList() async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl.getSleepList(),
      );

  @override
  Future<Either<Failure, Tuple2<DateTime, SleepData>>> updateSleep(
          DateTime date, SleepData sleepData) async =>
      _connectionChecker.failureCheck(
        () async {
          if (sleepData.sleepTime.sleepOption.isNone()) {
            throw const GenericFailure.unexpected();
          } else {
            return _userLocalDataSourceImpl.updateSleep(
              date,
              sleepData.toModel,
            );
          }
        },
      );

  @override
  Future<Either<Failure, IMap<DateTime, DietData>>> getDietList() async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl.getDietList(),
      );

  @override
  Future<Either<Failure, Tuple2<DateTime, DietData>>> updateDiet(
          DateTime date, DietData dietData) async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl.updateDiet(
          date,
          dietData.toModel,
        ),
      );

  @override
  Future<Either<Failure, IMap<DateTime, WaterData>>> getWaterList() async =>
      _connectionChecker.failureCheck(
        () async => _userLocalDataSourceImpl.getWaterList(),
      );

  @override
  Future<Either<Failure, Tuple2<DateTime, WaterData>>> updateWater(
          DateTime date, WaterData waterData) async =>
      _connectionChecker.failureCheck(
        () async {
          if (waterData.water.water.isNone()) {
            throw const GenericFailure.unexpected();
          } else {
            return _userLocalDataSourceImpl.updateWater(
              date,
              waterData.toModel,
            );
          }
        },
      );

  Future<IList<KeyWeightDataModel>> _ilistWeight() async =>
      ilist(await _userLocalDataSourceImpl.getWeightList())
          .sortByDate((e) => e.dateTime);
}
