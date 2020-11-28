import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/detailed_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/summary_activity.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

abstract class GoalRepository {
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id,
    bool includeAllEfforts,
  );

  Future<Either<Failure, IList<SummaryActivity>>> getLoggedInAthleteActivities(
    DateTime before,
    DateTime after,
    int page,
  );
}
