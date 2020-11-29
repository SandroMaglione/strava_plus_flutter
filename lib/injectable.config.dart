// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'app/activity/domain/activity_repository.dart';
import 'app/activity/data/repository/activity_repository_impl.dart';
import 'app/data/datasources/api/api_constants.dart';
import 'app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
import 'app/activity/domain/activity_repository.rc.dart';
import 'app/login/domain/login_repository.rc.dart';
import 'app/goal/domain/goal_repository.dart';
import 'app/goal/data/repository/goal_repository_impl.dart';
import 'app/login/presentation/controllers/cubit/login_cubit.dart';
import 'app/login/data/datasource/remote/login_remote_data_source.dart';
import 'app/login/domain/login_repository.dart';
import 'app/login/data/repository/login_repository_impl.dart';
import 'app/data/datasources/api/api_client.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerDioClient = _$RegisterDioClient();
  final registerFlutterSecureStorage = _$RegisterFlutterSecureStorage();
  gh.factory<ApiConstants>(() => ApiConstantsProduction());
  gh.factory<Dio>(() => registerDioClient.dioClient);
  gh.factory<FlutterSecureStorage>(
      () => registerFlutterSecureStorage.flutterSecureStorage);
  gh.factory<GoalRepository>(() => GoalRepositoryImpl());
  gh.factory<LoginRemoteDataSource>(() => LoginRemoteDataSource(get<Dio>()));
  gh.factory<LoginRepository>(() => LoginRepositoryImpl(
      get<LoginRemoteDataSource>(), get<FlutterSecureStorage>()));
  gh.factory<ActivityRemoteDataSource>(
      () => ActivityRemoteDataSource(get<Dio>()));
  gh.factory<ActivityRepository>(() => ActivityRepositoryImpl(
      get<ActivityRemoteDataSource>(), get<FlutterSecureStorage>()));
  gh.factory<GetActivityByIdRepo>(
      () => GetActivityByIdRepo(activityRepository: get<ActivityRepository>()));
  gh.factory<GetAuthTokenRepo>(
      () => GetAuthTokenRepo(loginRepository: get<LoginRepository>()));
  gh.factory<GetLoggedInAthleteActivitiesRepo>(() =>
      GetLoggedInAthleteActivitiesRepo(
          activityRepository: get<ActivityRepository>()));
  gh.factory<GetUserAccountInfoRepo>(
      () => GetUserAccountInfoRepo(loginRepository: get<LoginRepository>()));
  gh.factory<GetUserAccountStatsRepo>(
      () => GetUserAccountStatsRepo(loginRepository: get<LoginRepository>()));
  gh.factory<LoginCubit>(
      () => LoginCubit(get<GetAuthTokenRepo>(), get<GetUserAccountInfoRepo>()));
  gh.factory<ActivityListCubit>(
      () => ActivityListCubit(get<GetLoggedInAthleteActivitiesRepo>()));
  gh.factory<DetailedActivityCubit>(
      () => DetailedActivityCubit(get<GetActivityByIdRepo>()));
  return get;
}

class _$RegisterDioClient extends RegisterDioClient {}

class _$RegisterFlutterSecureStorage extends RegisterFlutterSecureStorage {}
