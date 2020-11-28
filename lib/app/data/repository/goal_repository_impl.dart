import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/data/datasources/remote/goal_remote_data_source.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/summary_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/detailed_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/goal_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GoalRepository)
class GoalRepositoryImpl implements GoalRepository {
  final GoalRemoteDataSource _goalRemoteDataSource;

  GoalRepositoryImpl(this._goalRemoteDataSource);

  @override
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id,
    bool includeAllEfforts,
  ) async =>
      Task(
        () async => _goalRemoteDataSource.getActivityById(
          id,
          'token',
          includeAllEfforts,
        ),
      ).runAll();

  @override
  Future<Either<Failure, IList<SummaryActivity>>> getLoggedInAthleteActivities(
          DateTime before, DateTime after, int page) async =>
      Task(
        () async => ilist(
          await _goalRemoteDataSource.getLoggedInAthleteActivities(
            'token',
            before.millisecondsSinceEpoch,
            after.millisecondsSinceEpoch,
            page,
            30,
          ),
        ),
      ).runAll();
}
