// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app/data/datasources/api/api_constants.dart';
import 'app/domain/repository/example_repository.dart';
import 'app/data/repository/example_repository_impl.dart';
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
  gh.factory<ApiConstants>(() => ApiConstantsProduction());
  gh.factory<Dio>(() => registerDioClient.dioClient);
  gh.factory<ExampleRepository>(
      () => ExampleRepositoryImpl(apiConstants: get<ApiConstants>()));
  gh.factory<MakeRequestRepo>(
      () => MakeRequestRepo(exampleRepository: get<ExampleRepository>()));
  return get;
}

class _$RegisterDioClient extends RegisterDioClient {}
