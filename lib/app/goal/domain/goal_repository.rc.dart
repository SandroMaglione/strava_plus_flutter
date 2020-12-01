// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/goal/domain/goal_repository.dart';

class CreateGoalRepo {
  final GoalRepository goalRepository;

  const CreateGoalRepo({
    @required this.goalRepository,
  });

  Future<Either<Failure, Unit>> call(CreateGoalRepoParams params) async {
    return goalRepository.createGoal(
      params.userGoal,
    );
  }
}

class CreateGoalRepoParams {
  final UserGoal userGoal;

  const CreateGoalRepoParams({
    @required this.userGoal,
  });
}

class DeleteGoalByIdRepo {
  final GoalRepository goalRepository;

  const DeleteGoalByIdRepo({
    @required this.goalRepository,
  });

  Future<Either<Failure, Unit>> call(DeleteGoalByIdRepoParams params) async {
    return goalRepository.deleteGoalById(
      params.id,
    );
  }
}

class DeleteGoalByIdRepoParams {
  final String id;

  const DeleteGoalByIdRepoParams({
    @required this.id,
  });
}

class UpdateGoalFromIdRepo {
  final GoalRepository goalRepository;

  const UpdateGoalFromIdRepo({
    @required this.goalRepository,
  });

  Future<Either<Failure, UserGoal>> call(
      UpdateGoalFromIdRepoParams params) async {
    return goalRepository.updateGoalFromId(
      params.id,
    );
  }
}

class UpdateGoalFromIdRepoParams {
  final String id;

  const UpdateGoalFromIdRepoParams({
    @required this.id,
  });
}

class GetInProgressGoalListRepo {
  final GoalRepository goalRepository;

  const GetInProgressGoalListRepo({
    @required this.goalRepository,
  });

  Future<Either<Failure, List<UserGoal>>> call() async {
    return goalRepository.getInProgressGoalList();
  }
}

class GetCompletedGoalListRepo {
  final GoalRepository goalRepository;

  const GetCompletedGoalListRepo({
    @required this.goalRepository,
  });

  Future<Either<Failure, List<UserGoal>>> call() async {
    return goalRepository.getCompletedGoalList();
  }
}
