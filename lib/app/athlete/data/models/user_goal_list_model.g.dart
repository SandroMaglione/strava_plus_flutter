// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'user_goal_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGoalListModel _$UserGoalListModelFromJson(Map<String, dynamic> json) {
  return UserGoalListModel(
    goals: (json['goals'] as List)
        ?.map((e) => e == null
            ? null
            : UserGoalModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserGoalListModelToJson(UserGoalListModel instance) =>
    <String, dynamic>{
      'goals': instance.goals?.map((e) => e?.toJson())?.toList(),
    };
