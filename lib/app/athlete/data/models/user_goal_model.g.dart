// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'user_goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGoalModel _$UserGoalModelFromJson(Map<String, dynamic> json) {
  return UserGoalModel(
    id: json['id'] as String,
    goalName: json['goalName'] as String,
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
    lastEditDate: json['lastEditDate'] == null
        ? null
        : DateTime.parse(json['lastEditDate'] as String),
    priority: _$enumDecodeNullable(_$GoalPriorityEnumMap, json['priority']),
    color: json['color'] as int,
    metrics: json['metrics'] == null
        ? null
        : GoalMetricModel.fromJson(json['metrics'] as Map<String, dynamic>),
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
  );
}

Map<String, dynamic> _$UserGoalModelToJson(UserGoalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastEditDate': instance.lastEditDate?.toIso8601String(),
      'priority': _$GoalPriorityEnumMap[instance.priority],
      'color': instance.color,
      'metrics': instance.metrics?.toJson(),
      'goalName': instance.goalName,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GoalPriorityEnumMap = {
  GoalPriority.high: 'high',
  GoalPriority.medium: 'medium',
  GoalPriority.low: 'low',
};
