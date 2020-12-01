import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/goal/data/models/data_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/final_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';
import 'package:mobile_polimi_project/core/enums/goal_priority.dart';

class CreateGoalCubit extends Cubit<UserGoalModel> {
  CreateGoalCubit() : super(UserGoal.empty);

  void selectColor(Color color) {
    emit(state.copyWith(color: color.value));
  }

  void selectPriority(GoalPriority goalPriority) {
    emit(state.copyWith(priority: goalPriority));
  }

  void selectStartDate(DateTime dateTime) {
    emit(state.copyWith(startDate: dateTime));
  }

  void selectEndDate(DateTime dateTime) {
    emit(state.copyWith(endDate: dateTime));
  }

  void changeName(String name) {
    emit(state.copyWith(goalName: name));
  }

  void addFinalMetric() {
    emit(
      state.copyWith(
        metrics: const FinalMetricModel(
          complexActivity: const DataActivityModel(ActivityId.distance),
          goalComparator: GoalComparator.greater,
          value: 10,
        ),
      ),
    );
  }
}
