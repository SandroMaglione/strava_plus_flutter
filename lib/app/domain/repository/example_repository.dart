import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/domain/entities/data.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:repo_case/repo_case.dart';

/// Example of interface
@repoCase
abstract class ExampleRepository {
  /// Defines abstract method for this repository
  ///
  /// **Repositories always return entites (and not models!)**
  Future<Either<Failure, Data>> makeRequest(String param);
}
