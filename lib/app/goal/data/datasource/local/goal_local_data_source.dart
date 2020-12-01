import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_list_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';

class GoalLocalDataSource {
  final FlutterSecureStorage _flutterSecureStorage;
  static const _userGoalStorageKey = 'USER_GOAL_KEY';

  const GoalLocalDataSource(this._flutterSecureStorage);

  Future<Unit> createGoal(UserGoalModel userGoal) async => _flutterSecureStorage
      .write(
        key: GoalLocalDataSource._userGoalStorageKey,
        value: json.encode(
          UserGoalListModel(
            goals: [
              ...(await getGoals()).goals,
              userGoal,
            ],
          ).toJson(),
        ),
      )
      .then((_) => unit);

  Future<UserGoalListModel> getGoals() async => UserGoalListModel.fromJson(
        json.decode(
          await _flutterSecureStorage.read(
            key: GoalLocalDataSource._userGoalStorageKey,
          ),
        ) as Map<String, dynamic>,
      );
}
