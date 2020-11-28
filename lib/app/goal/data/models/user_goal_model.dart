import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/goal_name.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/list2_datetime.dart';
import 'package:mobile_polimi_project/core/enums/goal_priority.dart';

part 'user_goal_model.g.dart';

@JsonSerializable()
class UserGoalModel extends UserGoal {
  @override
  final String id;
  @override
  final DateTime createdDate;
  @override
  final DateTime lastEditDate;
  @override
  final GoalPriority priority;
  @override
  final int color;
  @override
  final GoalMetricModel metrics;

  final String goalName;
  final DateTime startDate;
  final DateTime endDate;

  const UserGoalModel({
    @required this.id,
    @required this.goalName,
    @required this.createdDate,
    @required this.lastEditDate,
    @required this.priority,
    @required this.color,
    @required this.metrics,
    @required this.startDate,
    @required this.endDate,
  });

  factory UserGoalModel.fromJson(Map<String, dynamic> json) =>
      _$UserGoalModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserGoalModelToJson(this);

  @override
  double get progress => throw UnimplementedError();

  @override
  List2Datetime get targetDates => List2Datetime(startDate, endDate);

  @override
  GoalName get name => GoalName(goalName);
}
