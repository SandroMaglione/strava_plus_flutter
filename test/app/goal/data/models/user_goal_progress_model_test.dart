import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_progress_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/final_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal_progress.dart';
import 'package:mobile_polimi_project/core/extensions/summary_activity_extension.dart';

import '../../../../fixtures/fixture_reader.dart';
import '../../../activity/data/models/shared.dart' as shared;
import 'shared.dart';

void main() {
  final jsonMap = json.decode(fixture("user_goal_progress_model.json"))
      as Map<String, dynamic>;

  test('should be of type UserGoalProgress', () async {
    expect(Shared.userGoalProgress, isA<UserGoalProgress>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.userGoalProgress, Shared.userGoalProgressCopy);
  });

  group('progress', () {
    test('should be completed with single FinalMetric', () async {
      expect(
        Shared.userGoalProgress.progress,
        tuple2(
          shared.Shared.summaryActivityModel
                  .activityValue(Shared.dataActivityModel.activityId) /
              (Shared.userGoalProgress.userGoal.metrics as FinalMetric).value,
          true,
        ),
      );
    });

    test('should be completed with multiple SummaryActivity', () async {
      expect(
        Shared.userGoalProgressMultiSummaryActivity.progress,
        tuple2(
          shared.Shared.summaryActivityModel
                  .activityValue(Shared.dataActivityModel.activityId) *
              (Shared.userGoalProgressMultiSummaryActivity.summaryActivityList
                  .length()) /
              (Shared.userGoalProgressMultiSummaryActivity.userGoal.metrics
                      as FinalMetric)
                  .value,
          true,
        ),
      );
    });

    test('should be completed with ComposeMetric MetricLogic.and', () async {
      expect(
        Shared.userGoalProgressComposeMetricAnd.progress,
        tuple2(1.0, true),
      );
    });

    test('should be completed with ComposeMetric MetricLogic.or', () async {
      expect(
        Shared.userGoalProgressComposeMetricOr.progress,
        tuple2(
          shared.Shared.summaryActivityModel
                  .activityValue(Shared.dataActivityModel.activityId) /
              Shared.userGoalProgressComposeMetricOrValue,
          true,
        ),
      );
    });

    test('should be equal to the addition of the two DataActivity', () async {
      expect(
        Shared.userGoalProgressComposeActivityAddition.progress,
        tuple2(
          shared.Shared.summaryActivityModel
                  .activityValue(Shared.dataActivityModel.activityId) *
              2 /* ComposeActivity (activity1, activity2) */ /
              (Shared.userGoalProgressComposeActivityAddition.userGoal.metrics
                      as FinalMetric)
                  .value,
          true,
        ),
      );
    });

    test('should be not completed because of the "and"', () async {
      expect(Shared.userGoalProgressAndOr.progress.value2, false);
      expect(Shared.userGoalProgressAndOr.progress.value1 < 1, true);
    });

    test('should be completed because of the "or"', () async {
      expect(Shared.userGoalProgressOrAnd.progress.value2, true);
      expect(Shared.userGoalProgressOrAnd.progress.value1 >= 1, true);
    });
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(UserGoalProgressModel.fromJson(jsonMap), Shared.userGoalProgress);
    });
  });
}
