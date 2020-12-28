import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:repo_case/repo_case.dart';

@repoCase
abstract class ActivityRepository {
  const ActivityRepository();

  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id,
    bool includeAllEfforts,
  );

  Future<Either<Failure, IList<ComposedSummaryActivity>>>
      getComposedSummaryActivityList(
    int page,
    DateTime before,
    DateTime after,
  );

  Future<Either<Failure, Unit>> saveExtraStats(int id, ExtraStats extraStats);
}
