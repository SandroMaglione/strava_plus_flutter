// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app/activity/data/datasource/remote/activity_remote_data_source.dart';
import 'app/activity/domain/activity_repository.dart';
import 'app/activity/data/repository/activity_repository_impl.dart';
import 'app/data/datasources/api/api_constants.dart';
import 'app/domain/repository/example_repository.dart';
import 'app/domain/repository/example_repository.rc.dart';
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
  gh.factory<MakeRequestRepo>(
      () => MakeRequestRepo(exampleRepository: get<ExampleRepository>()));
  gh.factory<ActivityRemoteDataSource>(
      () => ActivityRemoteDataSource(get<Dio>()));
  gh.factory<ActivityRepository>(() => ActivityRepositoryImpl(
      get<ActivityRemoteDataSource>(), get<FlutterSecureStorage>()));
  return get;
}

class _$RegisterDioClient extends RegisterDioClient {}

class _$RegisterFlutterSecureStorage extends RegisterFlutterSecureStorage {}
