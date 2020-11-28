import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/data/datasources/api/api_constants.dart';
import 'package:mobile_polimi_project/app/domain/entities/data.dart';
import 'package:mobile_polimi_project/app/domain/repository/example_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';
import 'package:injectable/injectable.dart';

/// Standard implementation of [ExampleRepository].
/// Binds the repository class to the data sources.
@Injectable(as: ExampleRepository)
class ExampleRepositoryImpl implements ExampleRepository {
  /// Api endpoints
  final ApiConstants apiConstants;

  /// Remote data source
  // final ExampleRemoteDataSource exampleRemoteDataSource;

  /// Inject dependencies
  ExampleRepositoryImpl({
    @required this.apiConstants,
    // @required this.exampleRemoteDataSource,
  });

  @override
  Future<Either<Failure, Data>> makeRequest(String param) async => Task(
        () async {
          /// No need of try/catch, [Task] handles all errors
          // final response = await exampleRemoteDataSource.makeGet(
          //   apiConstants.apiEndpoint,
          //   'token',
          //   param,
          // );

          // Since models extend entities, we can just return the model itself
          return null;
        },
      ).runAll();
}
