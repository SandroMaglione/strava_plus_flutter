// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'compose_metric_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComposeMetricModel _$ComposeMetricModelFromJson(Map<String, dynamic> json) {
  return ComposeMetricModel(
    goalMetricList: (json['goalMetricList'] as List)
        ?.map((e) => e == null
            ? null
            : GoalMetricModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metricLogic:
        _$enumDecodeNullable(_$MetricLogicEnumMap, json['metricLogic']),
  );
}

Map<String, dynamic> _$ComposeMetricModelToJson(ComposeMetricModel instance) =>
    <String, dynamic>{
      'goalMetricList':
          instance.goalMetricList?.map((e) => e?.toJson())?.toList(),
      'metricLogic': _$MetricLogicEnumMap[instance.metricLogic],
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

const _$MetricLogicEnumMap = {
  MetricLogic.and: 'and',
  MetricLogic.or: 'or',
};
