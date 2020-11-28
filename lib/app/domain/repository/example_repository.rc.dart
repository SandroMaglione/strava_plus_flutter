// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:mobile_polimi_project/app/domain/entities/data.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/domain/repository/example_repository.dart';

class MakeRequestRepo {
  final ExampleRepository exampleRepository;

  const MakeRequestRepo({
    @required this.exampleRepository,
  });

  Future<Either<Failure, Data>> call(MakeRequestRepoParams params) async {
    return exampleRepository.makeRequest(
      params.param,
    );
  }
}

class MakeRequestRepoParams {
  final String param;

  const MakeRequestRepoParams({
    @required this.param,
  });
}
