import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/water_value.dart';

part 'water_data_model.g.dart';

@JsonSerializable()
class WaterDataModel extends WaterData {
  final double waterAmount;

  const WaterDataModel({
    this.waterAmount,
  });

  factory WaterDataModel.fromJson(Map<String, dynamic> json) =>
      _$WaterDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$WaterDataModelToJson(this);

  @override
  WaterValue get water => WaterValue(waterAmount);

  @override
  WaterDataModel get toModel => WaterDataModel(waterAmount: waterAmount);
}
