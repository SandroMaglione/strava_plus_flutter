// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.dart';

class GetWeightListRepo {
  final UserRepository userRepository;

  const GetWeightListRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IList<KeyWeightData>>> call() async {
    return userRepository.getWeightList();
  }
}

class UpdateWeightRepo {
  final UserRepository userRepository;

  const UpdateWeightRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IList<KeyWeightData>>> call(
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

class ChangeWeightRepo {
  final UserRepository userRepository;

  const ChangeWeightRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IList<KeyWeightData>>> call(
      ChangeWeightRepoParams params) async {
    return userRepository.changeWeight(
      params.index,
      params.weight,
      params.dateTime,
    );
  }
}

class ChangeWeightRepoParams {
  final int index;
  final double weight;
  final DateTime dateTime;

  const ChangeWeightRepoParams({
    @required this.index,
    @required this.weight,
    @required this.dateTime,
  });
}

class DeleteWeightRepo {
  final UserRepository userRepository;

  const DeleteWeightRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IList<KeyWeightData>>> call(
      DeleteWeightRepoParams params) async {
    return userRepository.deleteWeight(
      params.index,
    );
  }
}

class DeleteWeightRepoParams {
  final int index;

  const DeleteWeightRepoParams({
    @required this.index,
  });
}

class GetSleepListRepo {
  final UserRepository userRepository;

  const GetSleepListRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IMap<DateTime, SleepData>>> call() async {
    return userRepository.getSleepList();
  }
}

class UpdateSleepRepo {
  final UserRepository userRepository;

  const UpdateSleepRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, Tuple2<DateTime, SleepData>>> call(
      UpdateSleepRepoParams params) async {
    return userRepository.updateSleep(
      params.date,
      params.sleepData,
    );
  }
}

class UpdateSleepRepoParams {
  final DateTime date;
  final SleepData sleepData;

  const UpdateSleepRepoParams({
    @required this.date,
    @required this.sleepData,
  });
}

class GetDietListRepo {
  final UserRepository userRepository;

  const GetDietListRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IMap<DateTime, DietData>>> call() async {
    return userRepository.getDietList();
  }
}

class UpdateDietRepo {
  final UserRepository userRepository;

  const UpdateDietRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, Tuple2<DateTime, DietData>>> call(
      UpdateDietRepoParams params) async {
    return userRepository.updateDiet(
      params.date,
      params.dietData,
    );
  }
}

class UpdateDietRepoParams {
  final DateTime date;
  final DietData dietData;

  const UpdateDietRepoParams({
    @required this.date,
    @required this.dietData,
  });
}

class GetWaterListRepo {
  final UserRepository userRepository;

  const GetWaterListRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, IMap<DateTime, WaterData>>> call() async {
    return userRepository.getWaterList();
  }
}

class UpdateWaterRepo {
  final UserRepository userRepository;

  const UpdateWaterRepo({
    @required this.userRepository,
  });

  Future<Either<Failure, Tuple2<DateTime, WaterData>>> call(
      UpdateWaterRepoParams params) async {
    return userRepository.updateWater(
      params.date,
      params.waterData,
    );
  }
}

class UpdateWaterRepoParams {
  final DateTime date;
  final WaterData waterData;

  const UpdateWaterRepoParams({
    @required this.date,
    @required this.waterData,
  });
}
