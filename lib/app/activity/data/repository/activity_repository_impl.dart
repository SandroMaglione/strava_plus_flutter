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
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/services/connection_checker.dart';
import 'package:mobile_polimi_project/core/services/token_manager.dart';

@Injectable(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityRemoteDataSource _activityRemoteDataSource;
  final StatsActivityLocalDataSourceImpl _statsActivityLocalDataSourceImpl;
  final TokenManager _tokenManager;
  final ConnectionChecker _connectionChecker;

  ActivityRepositoryImpl(
    this._activityRemoteDataSource,
    this._tokenManager,
    this._statsActivityLocalDataSourceImpl,
    this._connectionChecker,
  );

  @override
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id,
    bool includeAllEfforts,
  ) async =>
      _connectionChecker.connectionCheck(
        connectionAvailable: () async => _tokenManager.tokenRequest(
          (token) => token.fold(
            () => throw const GenericFailure.unexpected(),
            (token) => _activityRemoteDataSource.getActivityById(
              id,
              token,
              includeAllEfforts,
            ),
          ),
        ),
      );

  @override
  Future<Either<Failure, Unit>> saveExtraStats(
          int id, ExtraStats extraStats) async =>
      _connectionChecker.failureCheck(
        () async => _statsActivityLocalDataSourceImpl.saveExtraStats(
          id,
          extraStats.toModel,
        ),
      );

  @override
  Future<Either<Failure, IList<ComposedSummaryActivity>>>
      getComposedSummaryActivityList(
    int page,
    DateTime before,
    DateTime after,
  ) async =>
          _connectionChecker.connectionCheck(
            connectionAvailable: () async => ilist(
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
          );

  Future<ExtraStatsModel> _getExtraStats(int id) async =>
      _statsActivityLocalDataSourceImpl.getExtraStats(id);

  Future<List<SummaryActivityModel>> _getLoggedInAthleteActivities(
    int page,
    DateTime before,
    DateTime after,
  ) async =>
      _tokenManager.tokenRequest<List<SummaryActivityModel>>(
        (token) async => token.fold(
          () => throw const GenericFailure.unexpected(),
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
