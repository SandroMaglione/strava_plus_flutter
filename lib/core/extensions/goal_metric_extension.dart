import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/compose_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/final_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';
import 'package:mobile_polimi_project/core/enums/metric_logic.dart';
import 'package:mobile_polimi_project/core/extensions/complex_activity_extension.dart';
import 'package:mobile_polimi_project/core/extensions/enum_extenstion.dart';

extension GoalValue on GoalMetric {
  Tuple2<double, bool> progress(IList<SummaryActivity> summaryActivityList) {
    final metric = this;
    if (metric is FinalMetric) {
      return metric.progressCompare(summaryActivityList);
    } else if (metric is ComposeMetric) {
      if (metric.metricLogic == MetricLogic.and) {
        // Sum all progress and compute their average
        // e.g. 10 metrics, all 100% (1) => Sum = 10, Progress = 10 / 10 = 1 (100%)
        return metric.metrics.foldLeft<Tuple2<double, bool>>(
          tuple2(0, true),
          (prev, curr) {
            final progress = curr.progress(summaryActivityList);
            return tuple2(
              prev.value1 + (progress.value1 > 1 ? 1 : progress.value1),
              prev.value2 && progress.value2,
            );
          },
        ).apply(
          (a, b) => tuple2(
            a / metric.metrics.length(),
            b,
          ),
        );
      } else if (metric.metricLogic == MetricLogic.or) {
        // Compute the maximum progress in all the metrics
        return metric.metrics.foldLeft<Tuple2<double, bool>>(
          tuple2(0, false),
          (prev, curr) {
            final progress = curr.progress(summaryActivityList);
            return tuple2(
              max(prev.value1, progress.value1),
              prev.value2 || progress.value2,
            );
          },
        );
      } else {
        throw Exception(
            '[GoalMetric.progress]: Unrecognized MetricLogic, impossible to continue!');
      }
    } else {
      throw Exception(
          '[GoalMetric.progress]: Unrecognized GoalMetric, impossible to continue!');
    }
  }
}

extension FinalMetricValue on FinalMetric {
  Tuple2<double, bool> progressCompare(
          IList<SummaryActivity> summaryActivityList) =>
      this.goalComparator.compare(
            this.complexActivity.nestedValue(summaryActivityList),
            this.value,
          );
}
