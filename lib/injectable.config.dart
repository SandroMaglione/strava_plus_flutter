// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'app/activity/domain/activity_repository.dart';
import 'app/activity/data/repository/activity_repository_impl.dart';
import 'app/data/datasources/api/api_constants.dart';
import 'core/services/connection_checker.dart';
import 'app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
import 'app/user/presentation/controllers/cubit/diet_cubit.dart';
import 'app/login/domain/login_repository.rc.dart';
import 'app/activity/domain/activity_repository.rc.dart';
import 'app/user/domain/user_repository.rc.dart';
import 'app/domain/setting_repository.rc.dart';
import 'core/services/hive_manager.dart';
import 'app/login/presentation/controllers/cubit/login_cubit.dart';
import 'app/login/data/datasource/remote/login_remote_data_source.dart';
import 'app/login/domain/login_repository.dart';
import 'app/login/data/repository/login_repository_impl.dart';
import 'app/data/datasources/api/api_client.dart';
import 'app/data/datasources/local/setting_local_data_source.dart';
import 'app/domain/setting_repository.dart';
import 'app/data/repository/setting_repository_impl.dart';
import 'app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'app/activity/data/datasource/local/stats_activity_local_data_source.dart';
import 'app/presentation/controller/cubit/theme_cubit.dart';
import 'core/services/token_manager.dart';
import 'app/user/data/datasource/local/user_local_data_source.dart';
import 'app/user/domain/user_repository.dart';
import 'app/user/data/repository/user_repository_impl.dart';
import 'app/user/presentation/controllers/cubit/water_cubit.dart';
import 'app/user/presentation/controllers/cubit/weight_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final cegisterconnectivity = _$Cegisterconnectivity();
  final registerDioClient = _$RegisterDioClient();
  final registerFlutterSecureStorage = _$RegisterFlutterSecureStorage();
  gh.factory<ApiConstants>(() => ApiConstantsProduction());
  gh.factory<Connectivity>(() => cegisterconnectivity.connectivity);
  gh.factory<Dio>(() => registerDioClient.dioClient);
  gh.factory<FlutterSecureStorage>(
      () => registerFlutterSecureStorage.flutterSecureStorage);
  gh.lazySingleton<HiveManager>(() => HiveManager());
  gh.factory<LoginRemoteDataSource>(() => LoginRemoteDataSource(get<Dio>()));
  gh.factory<SettingLocalDataSource>(() => SettingLocalDataSourceImpl(
      flutterSecureStorage: get<FlutterSecureStorage>()));
  gh.factory<SettingRepository>(() => SettingRepositoryImpl(
      settingLocalDataSource: get<SettingLocalDataSource>()));
  gh.factory<StatsActivityLocalDataSourceImpl>(
      () => StatsActivityLocalDataSourceImpl(get<HiveManager>()));
  gh.factory<StoreLocalSettingRepo>(
      () => StoreLocalSettingRepo(settingRepository: get<SettingRepository>()));
  gh.factory<TokenManager>(() => TokenManagerFlutterSecureStorage(
      get<FlutterSecureStorage>(), get<LoginRemoteDataSource>()));
  gh.factory<UserLocalDataSourceImpl>(
      () => UserLocalDataSourceImpl(get<HiveManager>()));
  gh.factory<ActivityRemoteDataSource>(
      () => ActivityRemoteDataSource(get<Dio>()));
  gh.factory<ClearLocalSettingRepo>(
      () => ClearLocalSettingRepo(settingRepository: get<SettingRepository>()));
  gh.factory<ConnectionChecker>(
      () => DataConnectionCheckerImpl(get<Connectivity>()));
  gh.factory<GetLocalSettingRepo>(
      () => GetLocalSettingRepo(settingRepository: get<SettingRepository>()));
  gh.factory<LoginRepository>(() => LoginRepositoryImpl(
        get<LoginRemoteDataSource>(),
        get<TokenManager>(),
        get<ConnectionChecker>(),
        get<HiveManager>(),
        get<SettingLocalDataSource>(),
      ));
  gh.factory<LogoutRepo>(
      () => LogoutRepo(loginRepository: get<LoginRepository>()));
  gh.factory<ThemeCubit>(() =>
      ThemeCubit(get<GetLocalSettingRepo>(), get<StoreLocalSettingRepo>()));
  gh.factory<UserRepository>(() => UserRepositoryImpl(
      get<UserLocalDataSourceImpl>(), get<ConnectionChecker>()));
  gh.factory<ActivityRepository>(() => ActivityRepositoryImpl(
        get<ActivityRemoteDataSource>(),
        get<TokenManager>(),
        get<StatsActivityLocalDataSourceImpl>(),
        get<ConnectionChecker>(),
      ));
  gh.factory<ChangeWeightRepo>(
      () => ChangeWeightRepo(userRepository: get<UserRepository>()));
  gh.factory<DeleteWeightRepo>(
      () => DeleteWeightRepo(userRepository: get<UserRepository>()));
  gh.factory<GetActivityByIdRepo>(
      () => GetActivityByIdRepo(activityRepository: get<ActivityRepository>()));
  gh.factory<GetAuthTokenRepo>(
      () => GetAuthTokenRepo(loginRepository: get<LoginRepository>()));
  gh.factory<GetComposedSummaryActivityListRepo>(() =>
      GetComposedSummaryActivityListRepo(
          activityRepository: get<ActivityRepository>()));
  gh.factory<GetDietListRepo>(
      () => GetDietListRepo(userRepository: get<UserRepository>()));
  gh.factory<GetSleepListRepo>(
      () => GetSleepListRepo(userRepository: get<UserRepository>()));
  gh.factory<GetUserAccountInfoRepo>(
      () => GetUserAccountInfoRepo(loginRepository: get<LoginRepository>()));
  gh.factory<GetWaterListRepo>(
      () => GetWaterListRepo(userRepository: get<UserRepository>()));
  gh.factory<GetWeightListRepo>(
      () => GetWeightListRepo(userRepository: get<UserRepository>()));
  gh.factory<LoginCubit>(() => LoginCubit(
        get<GetAuthTokenRepo>(),
        get<GetUserAccountInfoRepo>(),
        get<LogoutRepo>(),
      ));
  gh.factory<SaveExtraStatsRepo>(
      () => SaveExtraStatsRepo(activityRepository: get<ActivityRepository>()));
  gh.factory<UpdateDietRepo>(
      () => UpdateDietRepo(userRepository: get<UserRepository>()));
  gh.factory<UpdateSleepRepo>(
      () => UpdateSleepRepo(userRepository: get<UserRepository>()));
  gh.factory<UpdateWaterRepo>(
      () => UpdateWaterRepo(userRepository: get<UserRepository>()));
  gh.factory<UpdateWeightRepo>(
      () => UpdateWeightRepo(userRepository: get<UserRepository>()));
  gh.factory<WaterCubit>(
      () => WaterCubit(get<GetWaterListRepo>(), get<UpdateWaterRepo>()));
  gh.factory<WeightCubit>(() => WeightCubit(
        get<GetWeightListRepo>(),
        get<UpdateWeightRepo>(),
        get<ChangeWeightRepo>(),
        get<DeleteWeightRepo>(),
      ));
  gh.factory<ActivityListCubit>(() => ActivityListCubit(
      get<GetComposedSummaryActivityListRepo>(), get<SaveExtraStatsRepo>()));
  gh.factory<DetailedActivityCubit>(
      () => DetailedActivityCubit(get<GetActivityByIdRepo>()));
  gh.factory<DietCubit>(
      () => DietCubit(get<GetDietListRepo>(), get<UpdateDietRepo>()));
  gh.factory<SleepCubit>(
      () => SleepCubit(get<GetSleepListRepo>(), get<UpdateSleepRepo>()));
  return get;
}

class _$Cegisterconnectivity extends Cegisterconnectivity {}

class _$RegisterDioClient extends RegisterDioClient {}

class _$RegisterFlutterSecureStorage extends RegisterFlutterSecureStorage {}
