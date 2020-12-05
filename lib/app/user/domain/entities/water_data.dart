import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/user/data/models/water_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/water_value.dart';

abstract class WaterData extends Equatable {
  const WaterData();

  WaterValue get water;

  WaterDataModel get toModel;

  @override
  List<Object> get props => [water];
}
