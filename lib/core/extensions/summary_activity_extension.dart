import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';

extension ActivityValue on SummaryActivity {
  double activityValue(ActivityId activityId) {
    switch (activityId) {
      case ActivityId.distance:
        return this.distance.toDouble();
      case ActivityId.movingTime:
        return this.movingTime.toDouble();
      case ActivityId.elapsedTime:
        return this.elapsedTime.toDouble();
      case ActivityId.totalElevationGain:
        return this.totalElevationGain.toDouble();
      case ActivityId.achievementCount:
        return this.achievementCount.toDouble();
      case ActivityId.kudosCount:
        return this.kudosCount.toDouble();
      case ActivityId.commentCount:
        return this.commentCount.toDouble();
      case ActivityId.athleteCount:
        return this.athleteCount.toDouble();
      default:
        throw Exception(
            '[SummaryActivity.activityValue]: Unrecognized ActivityId, impossible to continue!');
    }
  }
}

extension ActivityProgress on IList<SummaryActivity> {
  double activityProgress(ActivityId activityId) => this.foldLeft<double>(
        0,
        (prev, curr) =>
            prev +
            curr.activityValue(
              activityId,
            ),
      );
}
