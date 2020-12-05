import 'dart:convert';

import 'package:dartz/dartz.dart';
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

  Future<SleepDataModel> getSleep(DateTime date) async =>
      SleepDataModel.fromJson(
        json.decode(_hiveManager.sleepBox.get(date)) as Map<String, dynamic>,
      );

  Future<Tuple2<DateTime, SleepDataModel>> updateSleep(
          DateTime date, SleepDataModel sleepDataModel) async =>
      _hiveManager.sleepBox
          .put(
            date.toString(),
            json.encode(sleepDataModel.toJson()),
          )
          .then(
            (_) => tuple2(date, sleepDataModel),
          );

  Future<IMap<DateTime, SleepDataModel>> getSleepList() async => imap(
        _hiveManager.sleepBox
            .toMap()
            .entries
            .fold<Map<DateTime, SleepDataModel>>(
          {},
          (prev, e) => {
            ...prev,
            DateTime.parse(e.key as String): SleepDataModel.fromJson(
              json.decode(e.value) as Map<String, dynamic>,
            ),
          },
        ),
      );
}
