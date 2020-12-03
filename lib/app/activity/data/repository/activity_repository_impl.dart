import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/data/datasource/local/stats_activity_local_data_source.dart';
import 'package:mobile_polimi_project/app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'package:mobile_polimi_project/app/activity/data/models/composed_summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/core/errors/login_failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/services/token_manager.dart';

@Injectable(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityRemoteDataSource _activityRemoteDataSource;
  final StatsActivityLocalDataSourceImpl _statsActivityLocalDataSourceImpl;
  final TokenManager _tokenManager;

  ActivityRepositoryImpl(
    this._activityRemoteDataSource,
    this._tokenManager,
    this._statsActivityLocalDataSourceImpl,
  );

  @override
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id,
    bool includeAllEfforts,
  ) async =>
      Task(
        () async => _tokenManager.tokenRequest(
          (token) => token.fold(
            () => throw const LoginFailure(0, null),
            (token) => _activityRemoteDataSource.getActivityById(
              id,
              token,
              includeAllEfforts,
            ),
          ),
        ),
      ).runAll();

  @override
  Future<Either<Failure, Unit>> saveExtraStats(
          int id, ExtraStats extraStats) async =>
      Task(
        () async => _statsActivityLocalDataSourceImpl.saveExtraStats(
            id, extraStats.toModel),
      ).runAll();

  @override
  Future<Either<Failure, IList<ComposedSummaryActivity>>>
      getComposedSummaryActivityList(
    int page,
    DateTime before,
    DateTime after,
  ) async =>
          Task(
            () async => ilist(
              await Future.wait(
                (await _getLoggedInAthleteActivities(page, before, after)).map(
                  (summaryActivity) async => ComposedSummaryActivityModel(
                    extraStats: await _getExtraStats(
                      summaryActivity.id,
                    ),
                    summaryActivity: summaryActivity,
                  ),
                ),
              ),
            ),
          ).runAll();

  Future<ExtraStatsModel> _getExtraStats(int id) async =>
      _statsActivityLocalDataSourceImpl.getExtraStats(id);

  Future<List<SummaryActivityModel>> _getLoggedInAthleteActivities(
    int page,
    DateTime before,
    DateTime after,
  ) async =>
      _tokenManager.tokenRequest<List<SummaryActivityModel>>(
        (token) async => token.fold(
          () => throw const LoginFailure(0, null),
          (token) async =>
              _activityRemoteDataSource.getLoggedInAthleteActivities(
            token,
            before != null ? '${before.millisecondsSinceEpoch / 1000}' : '',
            after != null ? '${after.millisecondsSinceEpoch / 1000}' : '',
            page,
            30,
          ),
        ),
      );
}
