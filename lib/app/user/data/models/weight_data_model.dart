import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';

part 'weight_data_model.g.dart';

@JsonSerializable()
class WeightDataModel extends WeightData {
  @override
  final DateTime dateTime;
  @override
  final double value;

  const WeightDataModel({
    @required this.dateTime,
    @required this.value,
  });

  factory WeightDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeightDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$WeightDataModelToJson(this);
}
