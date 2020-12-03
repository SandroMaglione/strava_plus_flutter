// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'compose_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComposeActivityModel _$ComposeActivityModelFromJson(Map<String, dynamic> json) {
  return ComposeActivityModel(
    activity1: json['activity1'] == null
        ? null
        : ComplexActivityModel.fromJson(
            json['activity1'] as Map<String, dynamic>),
    operation: _$enumDecodeNullable(_$GoalOperationEnumMap, json['operation']),
    activity2: json['activity2'] == null
        ? null
        : ComplexActivityModel.fromJson(
            json['activity2'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ComposeActivityModelToJson(
        ComposeActivityModel instance) =>
    <String, dynamic>{
      'activity1': instance.activity1?.toJson(),
      'operation': _$GoalOperationEnumMap[instance.operation],
      'activity2': instance.activity2?.toJson(),
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

const _$GoalOperationEnumMap = {
  GoalOperation.addition: 'addition',
  GoalOperation.subtraction: 'subtraction',
  GoalOperation.multiplication: 'multiplication',
  GoalOperation.division: 'division',
};
