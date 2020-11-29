// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.dart';

class GetActivityByIdRepo {
  final ActivityRepository activityRepository;

  const GetActivityByIdRepo({
    @required this.activityRepository,
  });

  Future<Either<Failure, DetailedActivity>> call(
      GetActivityByIdRepoParams params) async {
    return activityRepository.getActivityById(
      params.id,
      params.includeAllEfforts,
    );
  }
}

class GetActivityByIdRepoParams {
  final int id;
  final bool includeAllEfforts;

  const GetActivityByIdRepoParams({
    @required this.id,
    @required this.includeAllEfforts,
  });
}

class GetLoggedInAthleteActivitiesRepo {
  final ActivityRepository activityRepository;

  const GetLoggedInAthleteActivitiesRepo({
    @required this.activityRepository,
  });

  Future<Either<Failure, IList<SummaryActivity>>> call(
      GetLoggedInAthleteActivitiesRepoParams params) async {
    return activityRepository.getLoggedInAthleteActivities(
      params.page,
      params.before,
      params.after,
    );
  }
}

class GetLoggedInAthleteActivitiesRepoParams {
  final int page;
  final DateTime before;
  final DateTime after;

  const GetLoggedInAthleteActivitiesRepoParams({
    @required this.page,
    @required this.before,
    @required this.after,
  });
}
