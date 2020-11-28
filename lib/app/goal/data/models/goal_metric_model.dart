import 'package:mobile_polimi_project/app/goal/data/models/compose_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/final_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';

abstract class GoalMetricModel extends GoalMetric {
  const GoalMetricModel();

  factory GoalMetricModel.fromJson(Map<String, dynamic> json) {
    if (json["value"] != null) {
      return FinalMetricModel.fromJson(json);
    } else if (json["metricLogic"] != null) {
      return ComposeMetricModel.fromJson(json);
    } else {
      throw const FormatException(
          "[GoalMetricModel]: Could not determine the constructor for mapping from JSON");
    }
  }

  Map<String, dynamic> toJson();
}
