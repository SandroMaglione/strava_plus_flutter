// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'best_efforts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestEffortsModel _$BestEffortsModelFromJson(Map<String, dynamic> json) {
  return BestEffortsModel(
    id: json['id'] as int,
    resource_state: json['resource_state'] as int,
    name: json['name'] as String,
    activity: _$enumDecodeNullable(_$ActivityTypeEnumMap, json['activity']),
    athlete: json['athlete'] == null
        ? null
        : MetaAthleteModel.fromJson(json['athlete'] as Map<String, dynamic>),
    elapsed_time: json['elapsed_time'] as int,
    moving_time: json['moving_time'] as int,
    start_date: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    start_date_local: json['start_date_local'] == null
        ? null
        : DateTime.parse(json['start_date_local'] as String),
    distance: json['distance'] as int,
    start_index: json['start_index'] as int,
    end_index: json['end_index'] as int,
    pr_rank: json['pr_rank'] as String,
    achievements:
        (json['achievements'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$BestEffortsModelToJson(BestEffortsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource_state': instance.resource_state,
      'name': instance.name,
      'activity': _$ActivityTypeEnumMap[instance.activity],
      'athlete': instance.athlete?.toJson(),
      'elapsed_time': instance.elapsed_time,
      'moving_time': instance.moving_time,
      'start_date': instance.start_date?.toIso8601String(),
      'start_date_local': instance.start_date_local?.toIso8601String(),
      'distance': instance.distance,
      'start_index': instance.start_index,
      'end_index': instance.end_index,
      'pr_rank': instance.pr_rank,
      'achievements': instance.achievements,
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

const _$ActivityTypeEnumMap = {
  ActivityType.AlpineSki: 'AlpineSki',
  ActivityType.BackcountrySki: 'BackcountrySki',
  ActivityType.Canoeing: 'Canoeing',
  ActivityType.Crossfit: 'Crossfit',
  ActivityType.EBikeRide: 'EBikeRide',
  ActivityType.Elliptical: 'Elliptical',
  ActivityType.Golf: 'Golf',
  ActivityType.Handcycle: 'Handcycle',
  ActivityType.Hike: 'Hike',
  ActivityType.IceSkate: 'IceSkate',
  ActivityType.InlineSkate: 'InlineSkate',
  ActivityType.Kayaking: 'Kayaking',
  ActivityType.Kitesurf: 'Kitesurf',
  ActivityType.NordicSki: 'NordicSki',
  ActivityType.Ride: 'Ride',
  ActivityType.RockClimbing: 'RockClimbing',
  ActivityType.RollerSki: 'RollerSki',
  ActivityType.Rowing: 'Rowing',
  ActivityType.Run: 'Run',
  ActivityType.Sail: 'Sail',
  ActivityType.Skateboard: 'Skateboard',
  ActivityType.Snowboard: 'Snowboard',
  ActivityType.Snowshoe: 'Snowshoe',
  ActivityType.Soccer: 'Soccer',
  ActivityType.StairStepper: 'StairStepper',
  ActivityType.StandUpPaddling: 'StandUpPaddling',
  ActivityType.Surfing: 'Surfing',
  ActivityType.Swim: 'Swim',
  ActivityType.Velomobile: 'Velomobile',
  ActivityType.VirtualRide: 'VirtualRide',
  ActivityType.VirtualRun: 'VirtualRun',
  ActivityType.Walk: 'Walk',
  ActivityType.WeightTraining: 'WeightTraining',
  ActivityType.Wheelchair: 'Wheelchair',
  ActivityType.Windsurf: 'Windsurf',
  ActivityType.Workout: 'Workout',
  ActivityType.Yoga: 'Yoga',
};
