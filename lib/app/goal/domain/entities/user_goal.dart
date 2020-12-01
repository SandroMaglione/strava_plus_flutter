import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/goal_name.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/list2_datetime.dart';
import 'package:mobile_polimi_project/core/enums/goal_priority.dart';

abstract class UserGoal extends Equatable {
  const UserGoal();

  String get id;
  GoalName get name;
  List2Datetime get targetDates;
  DateTime get createdDate;
  DateTime get lastEditDate;
  GoalPriority get priority;
  int get color;
  GoalMetric get metrics;

  @override
  List<Object> get props => [id];
}
