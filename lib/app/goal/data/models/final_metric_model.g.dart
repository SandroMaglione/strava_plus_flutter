// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'final_metric_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinalMetricModel _$FinalMetricModelFromJson(Map<String, dynamic> json) {
  return FinalMetricModel(
    complexActivity: json['complexActivity'] == null
        ? null
        : ComplexActivityModel.fromJson(
            json['complexActivity'] as Map<String, dynamic>),
    goalComparator:
        _$enumDecodeNullable(_$GoalComparatorEnumMap, json['goalComparator']),
    value: (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$FinalMetricModelToJson(FinalMetricModel instance) =>
    <String, dynamic>{
      'complexActivity': instance.complexActivity?.toJson(),
      'goalComparator': _$GoalComparatorEnumMap[instance.goalComparator],
      'value': instance.value,
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

const _$GoalComparatorEnumMap = {
  GoalComparator.less: 'less',
  GoalComparator.greater: 'greater',
  GoalComparator.greater_equal: 'greater_equal',
  GoalComparator.less_equal: 'less_equal',
  GoalComparator.equal: 'equal',
};
