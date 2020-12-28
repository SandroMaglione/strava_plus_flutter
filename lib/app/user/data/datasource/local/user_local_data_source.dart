import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:mobile_polimi_project/app/user/data/models/diet_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/key_weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/water_data_model.dart';
import 'package:mobile_polimi_project/app/user/data/models/weight_data_model.dart';
import 'package:mobile_polimi_project/core/services/hive_manager.dart';

class UserLocalDataSourceImpl {
  final HiveManager _hiveManager;

  const UserLocalDataSourceImpl(this._hiveManager);

  Future<Unit> deleteWeight(int index) async =>
      _hiveManager.weightBox.delete(index).then((_) => unit);

  Future<KeyWeightDataModel> updateWeight(
          WeightDataModel weightDataModel) async =>
      _hiveManager.weightBox
          .add(json.encode(weightDataModel.toJson()))
          .then((index) => weightDataModel.toKeyModel(index));

  Future<KeyWeightDataModel> changeWeight(
    KeyWeightDataModel keyWeightDataModel,
  ) async =>
      _hiveManager.weightBox
          .put(
            keyWeightDataModel.index,
            json.encode(keyWeightDataModel.toWeightModel.toJson()),
          )
          .then((_) => keyWeightDataModel);

  Future<List<KeyWeightDataModel>> getWeightList() async => [
        ..._hiveManager.weightBox.toMap().entries.map(
              (entry) => WeightDataModel.fromJson(
                json.decode(entry.value) as Map<String, dynamic>,
              ).toKeyModel(entry.key as int),
            )
      ];

  Future<Tuple2<DateTime, SleepDataModel>> updateSleep(
    DateTime date,
    SleepDataModel sleepDataModel,
  ) async =>
      _updateDateHistory(
        _hiveManager.sleepBox,
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

  Future<Tuple2<DateTime, WaterDataModel>> updateWater(
    DateTime date,
    WaterDataModel waterDataModel,
  ) async =>
      _updateDateHistory(
        _hiveManager.waterBox,
        date,
        waterDataModel,
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

  Future<IMap<DateTime, WaterDataModel>> getWaterList() async =>
      _getDatesHistory(
        _hiveManager.waterBox,
        (m) => WaterDataModel.fromJson(m),
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
