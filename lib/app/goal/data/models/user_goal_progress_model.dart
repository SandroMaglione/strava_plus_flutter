import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal_progress.dart';

part 'user_goal_progress_model.g.dart';

@JsonSerializable()
class UserGoalProgressModel extends UserGoalProgress {
  final List<SummaryActivityModel> activities;
  @override
  final UserGoalModel userGoal;

  const UserGoalProgressModel({
    @required this.activities,
    @required this.userGoal,
  });

  factory UserGoalProgressModel.fromJson(Map<String, dynamic> json) =>
      _$UserGoalProgressModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserGoalProgressModelToJson(this);

  @override
  IList<SummaryActivity> get summaryActivityList => ilist(activities);
}
