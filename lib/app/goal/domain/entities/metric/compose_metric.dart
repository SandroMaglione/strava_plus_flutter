import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';
import 'package:mobile_polimi_project/core/enums/metric_logic.dart';

abstract class ComposeMetric extends Equatable implements GoalMetric {
  const ComposeMetric();

  MetricLogic get metricLogic;
  IList<GoalMetric> get metrics;

  @override
  List<Object> get props => [metrics, metricLogic];
}
