import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/complex_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';

abstract class FinalMetric extends Equatable implements GoalMetric {
  const FinalMetric();

  ComplexActivity get complexActivity;
  GoalComparator get goalComparator;
  double get value;

  @override
  List<Object> get props => [
        complexActivity,
        goalComparator,
        value,
      ];
}
