import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';

part 'key_weight_data_model.g.dart';

@JsonSerializable()
class KeyWeightDataModel extends KeyWeightData {
  @override
  final int index;
  @override
  final DateTime dateTime;
  @override
  final double value;

  const KeyWeightDataModel({
    @required this.index,
    @required this.dateTime,
    @required this.value,
  });

  factory KeyWeightDataModel.fromJson(Map<String, dynamic> json) =>
      _$KeyWeightDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$KeyWeightDataModelToJson(this);
}
