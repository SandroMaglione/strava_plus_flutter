import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/goal/data/models/data_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/final_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/goal_name.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/list2_datetime.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';
import 'package:mobile_polimi_project/core/enums/goal_priority.dart';

abstract class UserGoal extends Equatable {
  const UserGoal();

  String get id;
  GoalName get name;
  List2Datetime get targetDates;
  DateTime get createdDate;
  DateTime get lastEditDate;
  GoalPriority get priority;
  Color get colorObj;
  GoalMetric get metrics;

  static UserGoalModel get empty => UserGoalModel(
        id: '',
        goalName: '',
        createdDate: DateTime.now(),
        lastEditDate: DateTime.now(),
        priority: GoalPriority.medium,
        color: 0,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 14)),
        metrics: const FinalMetricModel(
          complexActivity: DataActivityModel(ActivityId.distance),
          goalComparator: GoalComparator.greater,
          value: 10000,
        ),
      );

  UserGoalModel copyWith({
    String id,
    DateTime createdDate,
    DateTime lastEditDate,
    GoalPriority priority,
    int color,
    String goalName,
    DateTime startDate,
    DateTime endDate,
    GoalMetricModel metrics,
  }) =>
      UserGoalModel(
        id: id ?? id,
        goalName: goalName ?? goalName,
        createdDate: createdDate ?? createdDate,
        lastEditDate: lastEditDate ?? lastEditDate,
        priority: priority ?? priority,
        color: color ?? color,
        startDate: startDate ?? startDate,
        endDate: endDate ?? endDate,
        metrics: metrics ?? metrics,
      );

  @override
  List<Object> get props => [id];
}
