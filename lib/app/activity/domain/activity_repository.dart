import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

// @repoCase
abstract class ActivityRepository {
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id, {
    bool includeAllEfforts,
  });

  Future<Either<Failure, IList<SummaryActivity>>> getLoggedInAthleteActivities(
    int page, {
    DateTime before,
    DateTime after,
  });
}
