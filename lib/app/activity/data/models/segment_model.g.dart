// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'segment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentModel _$SegmentModelFromJson(Map<String, dynamic> json) {
  return SegmentModel(
    id: json['id'] as int,
    resource_state: json['resource_state'] as int,
    name: json['name'] as String,
    activity_type:
        _$enumDecodeNullable(_$ActivityTypeEnumMap, json['activity_type']),
    distance: (json['distance'] as num)?.toDouble(),
    average_grade: (json['average_grade'] as num)?.toDouble(),
    maximum_grade: (json['maximum_grade'] as num)?.toDouble(),
    elevation_high: (json['elevation_high'] as num)?.toDouble(),
    elevation_low: (json['elevation_low'] as num)?.toDouble(),
    start_latlng: (json['start_latlng'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    end_latlng: (json['end_latlng'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    climb_category: json['climb_category'] as int,
    city: json['city'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    private: json['private'] as bool,
    hazardous: json['hazardous'] as bool,
    starred: json['starred'] as bool,
  );
}

Map<String, dynamic> _$SegmentModelToJson(SegmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource_state': instance.resource_state,
      'name': instance.name,
      'activity_type': _$ActivityTypeEnumMap[instance.activity_type],
      'distance': instance.distance,
      'average_grade': instance.average_grade,
      'maximum_grade': instance.maximum_grade,
      'elevation_high': instance.elevation_high,
      'elevation_low': instance.elevation_low,
      'start_latlng': instance.start_latlng,
      'end_latlng': instance.end_latlng,
      'climb_category': instance.climb_category,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'private': instance.private,
      'hazardous': instance.hazardous,
      'starred': instance.starred,
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
