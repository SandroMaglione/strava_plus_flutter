import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
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
  final TokenManager _tokenManager;

  ActivityRepositoryImpl(
    this._activityRemoteDataSource,
    this._tokenManager,
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
  Future<Either<Failure, IList<SummaryActivity>>> getLoggedInAthleteActivities(
    int page,
    DateTime before,
    DateTime after,
  ) async =>
      Task(
        () async => _tokenManager.tokenRequest<IList<SummaryActivity>>(
          (token) async => token.fold(
            () => throw const LoginFailure(0, null),
            (token) async => ilist(
              await _activityRemoteDataSource.getLoggedInAthleteActivities(
                token,
                before != null ? '${before.millisecondsSinceEpoch / 1000}' : '',
                after != null ? '${after.millisecondsSinceEpoch / 1000}' : '',
                page,
                30,
              ),
            ),
          ),
        ),
      ).runAll();
}
