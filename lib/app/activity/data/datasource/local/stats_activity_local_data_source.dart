import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/core/services/hive_manager.dart';

class StatsActivityLocalDataSourceImpl {
  final HiveManager _hiveManager;

  const StatsActivityLocalDataSourceImpl(this._hiveManager);

  Future<Unit> saveExtraStats(
    int id,
    ExtraStatsModel extraStatsModel,
  ) async =>
      _hiveManager.statsActivitiesBox
          .put(id, json.encode(extraStatsModel.toJson()))
          .then((_) => unit);

  Future<ExtraStatsModel> getExtraStats(int id) async =>
      ExtraStatsModel.fromJson(
        json.decode(
          _hiveManager.statsActivitiesBox.get(
            id,
            defaultValue: json.encode(ExtraStats.empty.toJson()),
          ),
        ) as Map<String, dynamic>,
      );
}
