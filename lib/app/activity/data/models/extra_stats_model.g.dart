// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'extra_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtraStatsModel _$ExtraStatsModelFromJson(Map<String, dynamic> json) {
  return ExtraStatsModel(
    rpeValue: json['rpeValue'] as int,
    moodValue: json['moodValue'] as int,
    experienceValue: json['experienceValue'] as int,
    temperatureValue: json['temperatureValue'] as int,
    humorPostWorkoutValue: json['humorPostWorkoutValue'] as int,
    motivationPreWorkoutValue: json['motivationPreWorkoutValue'] as int,
    lastMealValue: json['lastMealValue'] as int,
    workoutScopeValue:
        _$enumDecodeNullable(_$WorkoutScopeEnumMap, json['workoutScopeValue']),
    withStretchingValue: json['withStretchingValue'] as bool,
    isSpecialValue: json['isSpecialValue'] as bool,
    isSupervisedValue: json['isSupervisedValue'] as bool,
    isEspeciallyBadValue: json['isEspeciallyBadValue'] as bool,
  );
}

Map<String, dynamic> _$ExtraStatsModelToJson(ExtraStatsModel instance) =>
    <String, dynamic>{
      'rpeValue': instance.rpeValue,
      'moodValue': instance.moodValue,
      'experienceValue': instance.experienceValue,
      'temperatureValue': instance.temperatureValue,
      'humorPostWorkoutValue': instance.humorPostWorkoutValue,
      'motivationPreWorkoutValue': instance.motivationPreWorkoutValue,
      'lastMealValue': instance.lastMealValue,
      'withStretchingValue': instance.withStretchingValue,
      'isSpecialValue': instance.isSpecialValue,
      'isSupervisedValue': instance.isSupervisedValue,
      'isEspeciallyBadValue': instance.isEspeciallyBadValue,
      'workoutScopeValue': _$WorkoutScopeEnumMap[instance.workoutScopeValue],
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

const _$WorkoutScopeEnumMap = {
  WorkoutScope.endurance: 'endurance',
  WorkoutScope.strenght: 'strenght',
  WorkoutScope.high_intensity: 'high_intensity',
  WorkoutScope.recovery: 'recovery',
};
