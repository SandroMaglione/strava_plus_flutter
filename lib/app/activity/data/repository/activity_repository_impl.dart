import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_polimi_project/app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/mixins/token_mixin.dart';

@Injectable(as: ActivityRepository)
class ActivityRepositoryImpl with TokenMixin implements ActivityRepository {
  final ActivityRemoteDataSource _activityRemoteDataSource;
  final FlutterSecureStorage _flutterSecureStorage;

  ActivityRepositoryImpl(
    this._activityRemoteDataSource,
    this._flutterSecureStorage,
  );

  @override
  Future<Either<Failure, DetailedActivity>> getActivityById(
    int id, {
    bool includeAllEfforts = false,
  }) async =>
      Task(
        () async => tokenRequest(
          (token) => _activityRemoteDataSource.getActivityById(
            id,
            token,
            includeAllEfforts,
          ),
          _flutterSecureStorage,
        ),
      ).runAll();

  @override
  Future<Either<Failure, IList<SummaryActivity>>> getLoggedInAthleteActivities(
    int page, {
    DateTime before,
    DateTime after,
  }) async =>
      Task(
        () async => tokenRequest<IList<SummaryActivity>>(
          (token) async => ilist(
            await _activityRemoteDataSource.getLoggedInAthleteActivities(
              token,
              before?.millisecondsSinceEpoch,
              after?.millisecondsSinceEpoch,
              page,
              30,
            ),
          ),
          _flutterSecureStorage,
        ),
      ).runAll();
}
