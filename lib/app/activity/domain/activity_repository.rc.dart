// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
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

class GetComposedSummaryActivityListRepo {
  final ActivityRepository activityRepository;

  const GetComposedSummaryActivityListRepo({
    @required this.activityRepository,
  });

  Future<Either<Failure, IList<ComposedSummaryActivity>>> call(
      GetComposedSummaryActivityListRepoParams params) async {
    return activityRepository.getComposedSummaryActivityList(
      params.page,
      params.before,
      params.after,
    );
  }
}

class GetComposedSummaryActivityListRepoParams {
  final int page;
  final DateTime before;
  final DateTime after;

  const GetComposedSummaryActivityListRepoParams({
    @required this.page,
    @required this.before,
    @required this.after,
  });
}

class SaveExtraStatsRepo {
  final ActivityRepository activityRepository;

  const SaveExtraStatsRepo({
    @required this.activityRepository,
  });

  Future<Either<Failure, Unit>> call(SaveExtraStatsRepoParams params) async {
    return activityRepository.saveExtraStats(
      params.id,
      params.extraStats,
    );
  }
}

class SaveExtraStatsRepoParams {
  final int id;
  final ExtraStats extraStats;

  const SaveExtraStatsRepoParams({
    @required this.id,
    @required this.extraStats,
  });
}
