// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'data_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataActivityModel _$DataActivityModelFromJson(Map<String, dynamic> json) {
  return DataActivityModel(
    _$enumDecodeNullable(_$ActivityIdEnumMap, json['activityId']),
  );
}

Map<String, dynamic> _$DataActivityModelToJson(DataActivityModel instance) =>
    <String, dynamic>{
      'activityId': _$ActivityIdEnumMap[instance.activityId],
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

const _$ActivityIdEnumMap = {
  ActivityId.distance: 'distance',
  ActivityId.movingTime: 'movingTime',
  ActivityId.elapsedTime: 'elapsedTime',
  ActivityId.totalElevationGain: 'totalElevationGain',
  ActivityId.achievementCount: 'achievementCount',
  ActivityId.kudosCount: 'kudosCount',
  ActivityId.commentCount: 'commentCount',
  ActivityId.athleteCount: 'athleteCount',
};
