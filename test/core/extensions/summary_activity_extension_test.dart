import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';
import 'package:mobile_polimi_project/core/extensions/summary_activity_extension.dart';

import '../../app/activity/data/models/shared.dart' as shared;

void main() {
  group('SummaryActivity', () {
    group('activityValue', () {
      test('should extract the correct value based on ActivityId', () async {
        expect(
          shared.Shared.summaryActivityModel.activityValue(ActivityId.distance),
          shared.Shared.summaryActivityModel.distance,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.achievementCount),
          shared.Shared.summaryActivityModel.achievementCount,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.athleteCount),
          shared.Shared.summaryActivityModel.athleteCount,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.commentCount),
          shared.Shared.summaryActivityModel.commentCount,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.elapsedTime),
          shared.Shared.summaryActivityModel.elapsedTime,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.kudosCount),
          shared.Shared.summaryActivityModel.kudosCount,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.movingTime),
          shared.Shared.summaryActivityModel.movingTime,
        );
        expect(
          shared.Shared.summaryActivityModel
              .activityValue(ActivityId.totalElevationGain),
          shared.Shared.summaryActivityModel.totalElevationGain,
        );
      });
    });
  });

  group('IList<SummaryActivity>', () {
    group('activityProgress', () {
      test('should return the sum of all activity values', () async {
        expect(
          ilist([
            shared.Shared.summaryActivityModel,
            shared.Shared.summaryActivityModel
          ]).activityProgress(ActivityId.distance),
          shared.Shared.summaryActivityModel.distance * 2,
        );
      });
    });
  });
}
