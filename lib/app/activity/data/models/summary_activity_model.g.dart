// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'summary_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryActivityModel _$SummaryActivityModelFromJson(Map<String, dynamic> json) {
  return SummaryActivityModel(
    id: json['id'] as int,
    upload_id: json['upload_id'] as num,
    athlete: json['athlete'] == null
        ? null
        : MetaAthleteModel.fromJson(json['athlete'] as Map<String, dynamic>),
    name: json['name'] as String,
    distance: (json['distance'] as num)?.toDouble(),
    moving_time: json['moving_time'] as int,
    elapsed_time: json['elapsed_time'] as int,
    total_elevation_gain: (json['total_elevation_gain'] as num)?.toDouble(),
    elev_high: (json['elev_high'] as num)?.toDouble(),
    elev_low: (json['elev_low'] as num)?.toDouble(),
    type: _$enumDecodeNullable(_$ActivityTypeEnumMap, json['type']),
    start_date: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    start_date_local: json['start_date_local'] == null
        ? null
        : DateTime.parse(json['start_date_local'] as String),
    timezone: json['timezone'] as String,
    total_photo_count: json['total_photo_count'] as int,
    achievement_count: json['achievement_count'] as int,
    kudos_count: json['kudos_count'] as int,
    comment_count: json['comment_count'] as int,
    athlete_count: json['athlete_count'] as int,
    photo_count: json['photo_count'] as int,
    trainer: json['trainer'] as bool,
    commute: json['commute'] as bool,
    manual: json['manual'] as bool,
    private: json['private'] as bool,
    flagged: json['flagged'] as bool,
    workout_type: json['workout_type'] as int,
    upload_id_str: json['upload_id_str'] as String,
    average_speed: (json['average_speed'] as num)?.toDouble(),
    max_speed: (json['max_speed'] as num)?.toDouble(),
    has_kudoed: json['has_kudoed'] as bool,
    start_latlng: (json['start_latlng'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    end_latlng: (json['end_latlng'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    display_hide_heartrate_option:
        json['display_hide_heartrate_option'] as bool,
    from_accepted_tag: json['from_accepted_tag'] as bool,
    has_heartrate: json['has_heartrate'] as bool,
    heartrate_opt_out: json['heartrate_opt_out'] as bool,
    pr_count: json['pr_count'] as int,
    resource_state: json['resource_state'] as int,
    utc_offset: (json['utc_offset'] as num)?.toDouble(),
    visibility: json['visibility'] as String,
    gear_id: json['gear_id'] as String,
    external_id: json['external_id'] as String,
    location_city: json['location_city'] as String,
    location_country: json['location_country'] as String,
    location_state: json['location_state'] as String,
    kilojoules: (json['kilojoules'] as num)?.toDouble(),
    average_watts: (json['average_watts'] as num)?.toDouble(),
    device_watts: json['device_watts'] as bool,
    max_watts: json['max_watts'] as int,
    weighted_average_watts: json['weighted_average_watts'] as int,
  );
}

Map<String, dynamic> _$SummaryActivityModelToJson(
        SummaryActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'external_id': instance.external_id,
      'upload_id': instance.upload_id,
      'athlete': instance.athlete?.toJson(),
      'name': instance.name,
      'distance': instance.distance,
      'moving_time': instance.moving_time,
      'elapsed_time': instance.elapsed_time,
      'total_elevation_gain': instance.total_elevation_gain,
      'elev_high': instance.elev_high,
      'elev_low': instance.elev_low,
      'type': _$ActivityTypeEnumMap[instance.type],
      'start_date': instance.start_date?.toIso8601String(),
      'start_date_local': instance.start_date_local?.toIso8601String(),
      'timezone': instance.timezone,
      'achievement_count': instance.achievement_count,
      'kudos_count': instance.kudos_count,
      'comment_count': instance.comment_count,
      'athlete_count': instance.athlete_count,
      'photo_count': instance.photo_count,
      'total_photo_count': instance.total_photo_count,
      'trainer': instance.trainer,
      'commute': instance.commute,
      'manual': instance.manual,
      'private': instance.private,
      'flagged': instance.flagged,
      'workout_type': instance.workout_type,
      'upload_id_str': instance.upload_id_str,
      'average_speed': instance.average_speed,
      'max_speed': instance.max_speed,
      'has_kudoed': instance.has_kudoed,
      'gear_id': instance.gear_id,
      'kilojoules': instance.kilojoules,
      'average_watts': instance.average_watts,
      'device_watts': instance.device_watts,
      'max_watts': instance.max_watts,
      'weighted_average_watts': instance.weighted_average_watts,
      'start_latlng': instance.start_latlng,
      'end_latlng': instance.end_latlng,
      'display_hide_heartrate_option': instance.display_hide_heartrate_option,
      'from_accepted_tag': instance.from_accepted_tag,
      'has_heartrate': instance.has_heartrate,
      'heartrate_opt_out': instance.heartrate_opt_out,
      'location_city': instance.location_city,
      'location_country': instance.location_country,
      'location_state': instance.location_state,
      'pr_count': instance.pr_count,
      'resource_state': instance.resource_state,
      'utc_offset': instance.utc_offset,
      'visibility': instance.visibility,
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
