import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/goal/data/datasource/local/goal_local_data_source.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/app/goal/domain/goal_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GoalRepository)
class GoalRepositoryImpl implements GoalRepository {
  final GoalLocalDataSource _goalLocalDataSource;

  GoalRepositoryImpl(this._goalLocalDataSource);

  @override
  Future<Either<Failure, Unit>> createGoal(UserGoal userGoal) {
    // TODO: implement deleteGoalById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteGoalById(String id) {
    // TODO: implement deleteGoalById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserGoal>>> getCompletedGoalList() {
    // TODO: implement getCompletedGoalList
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserGoal>>> getInProgressGoalList() {
    // TODO: implement getInProgressGoalList
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserGoal>> updateGoalFromId(String id) {
    // TODO: implement updateGoalFromId
    throw UnimplementedError();
  }
}
