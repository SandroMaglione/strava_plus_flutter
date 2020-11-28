import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/goal/data/models/complex_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/final_metric.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';

part 'final_metric_model.g.dart';

@JsonSerializable()
class FinalMetricModel extends FinalMetric implements GoalMetricModel {
  @override
  final ComplexActivityModel complexActivity;

  @override
  final GoalComparator goalComparator;

  @override
  final double value;

  const FinalMetricModel({
    @required this.complexActivity,
    @required this.goalComparator,
    @required this.value,
  });

  factory FinalMetricModel.fromJson(Map<String, dynamic> json) =>
      _$FinalMetricModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FinalMetricModelToJson(this);
}
