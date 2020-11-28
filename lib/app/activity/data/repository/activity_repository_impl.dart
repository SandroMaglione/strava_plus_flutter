import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityRemoteDataSource _activityRemoteDataSource;

  ActivityRepositoryImpl(this._activityRemoteDataSource);

  @override
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id, {
    bool includeAllEfforts = false,
  }) async =>
      Task(
        () async => _activityRemoteDataSource.getActivityById(
          id,
          'token',
          includeAllEfforts,
        ),
      ).runAll();

  @override
  Future<Either<Failure, IList<SummaryActivity>>> getLoggedInAthleteActivities(
    int page, {
    DateTime before,
    DateTime after,
  }) async =>
      Task(
        () async => ilist(
          await _activityRemoteDataSource.getLoggedInAthleteActivities(
            'token',
            before?.millisecondsSinceEpoch,
            after?.millisecondsSinceEpoch,
            page,
            30,
          ),
        ),
      ).runAll();
}
