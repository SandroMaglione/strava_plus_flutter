import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/core/extensions/goal_metric_extension.dart';

abstract class UserGoalProgress extends Equatable {
  const UserGoalProgress();

  IList<SummaryActivity> get summaryActivityList;
  UserGoal get userGoal;

  Tuple2<double, bool> get progress =>
      userGoal.metrics.progress(summaryActivityList);

  @override
  List<Object> get props => [
        summaryActivityList,
        userGoal,
      ];
}
