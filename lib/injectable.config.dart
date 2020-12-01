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
import 'app/goal/presentation/controllers/cubit/create_goal_cubit.dart';
import 'app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
import 'app/login/domain/login_repository.rc.dart';
import 'app/domain/setting_repository.rc.dart';
import 'app/activity/domain/activity_repository.rc.dart';
import 'app/goal/domain/goal_repository.dart';
import 'app/goal/data/repository/goal_repository_impl.dart';
import 'app/login/presentation/controllers/cubit/login_cubit.dart';
import 'app/login/data/datasource/remote/login_remote_data_source.dart';
import 'app/login/domain/login_repository.dart';
import 'app/login/data/repository/login_repository_impl.dart';
import 'app/data/datasources/api/api_client.dart';
import 'app/data/datasources/local/setting_local_data_source.dart';
import 'app/domain/setting_repository.dart';
import 'app/data/repository/setting_repository_impl.dart';
import 'app/presentation/controller/cubit/theme_cubit.dart';
import 'core/services/token_manager.dart';

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
  gh.factory<CreateGoalCubit>(() => CreateGoalCubit());
  gh.factory<Dio>(() => registerDioClient.dioClient);
  gh.factory<FlutterSecureStorage>(
      () => registerFlutterSecureStorage.flutterSecureStorage);
  gh.factory<GoalRepository>(() => GoalRepositoryImpl());
  gh.factory<LoginRemoteDataSource>(() => LoginRemoteDataSource(get<Dio>()));
  gh.factory<SettingLocalDataSource>(() => SettingLocalDataSourceImpl(
      flutterSecureStorage: get<FlutterSecureStorage>()));
  gh.factory<SettingRepository>(() => SettingRepositoryImpl(
      settingLocalDataSource: get<SettingLocalDataSource>()));
  gh.factory<StoreLocalSettingRepo>(
      () => StoreLocalSettingRepo(settingRepository: get<SettingRepository>()));
  gh.factory<TokenManager>(() => TokenManagerFlutterSecureStorage(
      get<FlutterSecureStorage>(), get<LoginRemoteDataSource>()));
  gh.factory<ActivityRemoteDataSource>(
      () => ActivityRemoteDataSource(get<Dio>()));
  gh.factory<ActivityRepository>(() => ActivityRepositoryImpl(
      get<ActivityRemoteDataSource>(), get<TokenManager>()));
  gh.factory<ClearLocalSettingRepo>(
      () => ClearLocalSettingRepo(settingRepository: get<SettingRepository>()));
  gh.factory<GetActivityByIdRepo>(
      () => GetActivityByIdRepo(activityRepository: get<ActivityRepository>()));
  gh.factory<GetLocalSettingRepo>(
      () => GetLocalSettingRepo(settingRepository: get<SettingRepository>()));
  gh.factory<GetLoggedInAthleteActivitiesRepo>(() =>
      GetLoggedInAthleteActivitiesRepo(
          activityRepository: get<ActivityRepository>()));
  gh.factory<LoginRepository>(() =>
      LoginRepositoryImpl(get<LoginRemoteDataSource>(), get<TokenManager>()));
  gh.factory<ThemeCubit>(() =>
      ThemeCubit(get<GetLocalSettingRepo>(), get<StoreLocalSettingRepo>()));
  gh.factory<ActivityListCubit>(
      () => ActivityListCubit(get<GetLoggedInAthleteActivitiesRepo>()));
  gh.factory<DetailedActivityCubit>(
      () => DetailedActivityCubit(get<GetActivityByIdRepo>()));
  gh.factory<GetAuthTokenRepo>(
      () => GetAuthTokenRepo(loginRepository: get<LoginRepository>()));
  gh.factory<GetUserAccountInfoRepo>(
      () => GetUserAccountInfoRepo(loginRepository: get<LoginRepository>()));
  gh.factory<GetUserAccountStatsRepo>(
      () => GetUserAccountStatsRepo(loginRepository: get<LoginRepository>()));
  gh.factory<LoginCubit>(
      () => LoginCubit(get<GetAuthTokenRepo>(), get<GetUserAccountInfoRepo>()));
  return get;
}

class _$RegisterDioClient extends RegisterDioClient {}

class _$RegisterFlutterSecureStorage extends RegisterFlutterSecureStorage {}
