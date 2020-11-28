import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/compose_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';
import 'package:mobile_polimi_project/core/enums/metric_logic.dart';

part 'compose_metric_model.g.dart';

@JsonSerializable()
class ComposeMetricModel extends ComposeMetric implements GoalMetricModel {
  final List<GoalMetricModel> goalMetricList;

  @override
  final MetricLogic metricLogic;

  const ComposeMetricModel({
    @required this.goalMetricList,
    @required this.metricLogic,
  });

  factory ComposeMetricModel.fromJson(Map<String, dynamic> json) =>
      _$ComposeMetricModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ComposeMetricModelToJson(this);

  @override
  IList<GoalMetric> get metrics => ilist(goalMetricList);
}
