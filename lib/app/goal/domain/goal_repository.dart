import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

abstract class GoalRepository {
  Future<Either<Failure, Unit>> createGoal(UserGoal userGoal);
  Future<Either<Failure, Unit>> deleteGoalById(String id);
  Future<Either<Failure, UserGoal>> updateGoalFromId(String id);

  Future<Either<Failure, List<UserGoal>>> getInProgressGoalList();
  Future<Either<Failure, List<UserGoal>>> getCompletedGoalList();
}
