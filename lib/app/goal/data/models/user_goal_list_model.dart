import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';

part 'user_goal_list_model.g.dart';

@JsonSerializable()
class UserGoalListModel {
  final List<UserGoalModel> goals;

  const UserGoalListModel({
    @required this.goals,
  });

  factory UserGoalListModel.fromJson(Map<String, dynamic> json) =>
      _$UserGoalListModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserGoalListModelToJson(this);
}
