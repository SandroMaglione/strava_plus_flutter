import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_polimi_project/app/goal/data/models/complex_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/data_activity.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';

part 'data_activity_model.g.dart';

@JsonSerializable()
class DataActivityModel extends DataActivity implements ComplexActivityModel {
  @override
  final ActivityId activityId;

  const DataActivityModel(this.activityId);

  factory DataActivityModel.fromJson(Map<String, dynamic> json) =>
      _$DataActivityModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DataActivityModelToJson(this);
}
