import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:mobile_polimi_project/app/user/data/models/diet_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/weight_data_model.dart';
import 'package:mobile_polimi_project/core/services/hive_manager.dart';

class UserLocalDataSourceImpl {
  final HiveManager _hiveManager;

  const UserLocalDataSourceImpl(this._hiveManager);

  Future<WeightDataModel> updateWeight(WeightDataModel weightDataModel) async =>
      _hiveManager.weightBox
          .add(json.encode(weightDataModel.toJson()))
          .then((_) => weightDataModel);

  Future<List<WeightDataModel>> getWeightList() async => [
        ..._hiveManager.weightBox.values.map(
          (e) => WeightDataModel.fromJson(
            json.decode(e) as Map<String, dynamic>,
          ),
        )
      ];

  Future<Tuple2<DateTime, SleepDataModel>> updateSleep(
    DateTime date,
    SleepDataModel sleepDataModel,
  ) async =>
      _updateDateHistory(
        _hiveManager.dietBox,
        date,
        sleepDataModel,
        (m) => m.toJson(),
      );

  Future<Tuple2<DateTime, DietDataModel>> updateDiet(
    DateTime date,
    DietDataModel dietDataModel,
  ) async =>
      _updateDateHistory(
        _hiveManager.dietBox,
        date,
        dietDataModel,
        (m) => m.toJson(),
      );

  Future<IMap<DateTime, SleepDataModel>> getSleepList() async =>
      _getDatesHistory(
        _hiveManager.sleepBox,
        (m) => SleepDataModel.fromJson(m),
      );

  Future<IMap<DateTime, DietDataModel>> getDietList() async => _getDatesHistory(
        _hiveManager.dietBox,
        (m) => DietDataModel.fromJson(m),
      );

  Future<Tuple2<DateTime, T>> _updateDateHistory<T>(
    Box<String> source,
    DateTime date,
    T dataModel,
    Map<String, dynamic> Function(T) toJson,
  ) async =>
      source
          .put(
            date.toString(),
            json.encode(toJson(dataModel)),
          )
          .then(
            (_) => tuple2(date, dataModel),
          );

  Future<IMap<DateTime, T>> _getDatesHistory<T>(
    Box<String> source,
    T Function(Map<String, dynamic>) fromJson,
  ) async =>
      imap(
        source.toMap().entries.fold<Map<DateTime, T>>(
          {},
          (prev, e) => {
            ...prev,
            DateTime.parse(e.key as String): fromJson(
              json.decode(e.value) as Map<String, dynamic>,
            ),
          },
        ),
      );
}
