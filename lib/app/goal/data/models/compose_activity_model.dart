import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/goal/data/models/complex_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/compose_activity.dart';
import 'package:mobile_polimi_project/core/enums/goal_operation.dart';

part 'compose_activity_model.g.dart';

@JsonSerializable()
class ComposeActivityModel extends ComposeActivity
    implements ComplexActivityModel {
  @override
  final ComplexActivityModel activity1;
  @override
  final GoalOperation operation;
  @override
  final ComplexActivityModel activity2;

  const ComposeActivityModel({
    @required this.activity1,
    @required this.operation,
    @required this.activity2,
  });

  factory ComposeActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ComposeActivityModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ComposeActivityModelToJson(this);
}
