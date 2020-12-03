// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'user_goal_progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGoalProgressModel _$UserGoalProgressModelFromJson(
    Map<String, dynamic> json) {
  return UserGoalProgressModel(
    activities: (json['activities'] as List)
        ?.map((e) => e == null
            ? null
            : SummaryActivityModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userGoal: json['userGoal'] == null
        ? null
        : UserGoalModel.fromJson(json['userGoal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserGoalProgressModelToJson(
        UserGoalProgressModel instance) =>
    <String, dynamic>{
      'activities': instance.activities?.map((e) => e?.toJson())?.toList(),
      'userGoal': instance.userGoal?.toJson(),
    };
