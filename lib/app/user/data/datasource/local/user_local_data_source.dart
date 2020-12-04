import 'dart:convert';

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

  Future<SleepDataModel> getSleep(DateTime dateTime) async =>
      SleepDataModel.fromJson(
        json.decode(_hiveManager.sleepBox.get(dateTime))
            as Map<String, dynamic>,
      );

  Future<SleepDataModel> updateSleep(SleepDataModel sleepDataModel) async =>
      _hiveManager.sleepBox
          .put(sleepDataModel.wakeUp, json.encode(sleepDataModel.toJson()))
          .then((_) => sleepDataModel);

  Future<List<SleepDataModel>> getSleepList() async => [
        ..._hiveManager.sleepBox.values.map(
          (e) => SleepDataModel.fromJson(
            json.decode(e) as Map<String, dynamic>,
          ),
        )
      ];
}
