import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/data/datasource/local/user_local_data_source.dart';
import 'package:mobile_polimi_project/app/user/data/models/weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSourceImpl _userLocalDataSourceImpl;

  UserRepositoryImpl(this._userLocalDataSourceImpl);

  @override
  Future<Either<Failure, IList<WeightData>>> getWeightList() async => Task(
        () async => ilist(await _userLocalDataSourceImpl.getWeightList()),
      ).runAll();

  @override
  Future<Either<Failure, WeightData>> updateWeight(double weight) async => Task(
        () async => _userLocalDataSourceImpl.updateWeight(
          WeightDataModel(
            dateTime: DateTime.now(),
            value: weight,
          ),
        ),
      ).runAll();
}
