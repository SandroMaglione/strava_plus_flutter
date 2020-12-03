// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.dart';

class GetWeightListRepo {
  final UserRepository userRepository;

  const GetWeightListRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IList<WeightData>>> call() async {
    return userRepository.getWeightList();
  }
}

class UpdateWeightRepo {
  final UserRepository userRepository;

  const UpdateWeightRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, WeightData>> call(
      UpdateWeightRepoParams params) async {
    return userRepository.updateWeight(
      params.weight,
    );
  }
}

class UpdateWeightRepoParams {
  final double weight;

  const UpdateWeightRepoParams({
    @required this.weight,
  });
}
