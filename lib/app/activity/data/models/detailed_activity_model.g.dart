// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'detailed_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedActivityModel _$DetailedActivityModelFromJson(
    Map<String, dynamic> json) {
  return DetailedActivityModel(
    resource_state: json['resource_state'] as int,
    athlete: json['athlete'] == null
        ? null
        : MetaAthleteModel.fromJson(json['athlete'] as Map<String, dynamic>),
    name: json['name'] as String,
    distance: (json['distance'] as num)?.toDouble(),
    moving_time: json['moving_time'] as int,
    elapsed_time: json['elapsed_time'] as int,
    total_elevation_gain: (json['total_elevation_gain'] as num)?.toDouble(),
    type: _$enumDecodeNullable(_$ActivityTypeEnumMap, json['type']),
    workout_type: json['workout_type'] as int,
    id: json['id'] as int,
    upload_id: json['upload_id'] as int,
    start_date: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    start_date_local: json['start_date_local'] == null
        ? null
        : DateTime.parse(json['start_date_local'] as String),
    timezone: json['timezone'] as String,
    utc_offset: (json['utc_offset'] as num)?.toDouble(),
    start_latlng: (json['start_latlng'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    end_latlng: (json['end_latlng'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    start_latitude: (json['start_latitude'] as num)?.toDouble(),
    start_longitude: (json['start_longitude'] as num)?.toDouble(),
    achievement_count: json['achievement_count'] as int,
    kudos_count: json['kudos_count'] as int,
    comment_count: json['comment_count'] as int,
    athlete_count: json['athlete_count'] as int,
    photo_count: json['photo_count'] as int,
    trainer: json['trainer'] as bool,
    commute: json['commute'] as bool,
    manual: json['manual'] as bool,
    private: json['private'] as bool,
    visibility: json['visibility'] as String,
    flagged: json['flagged'] as bool,
    from_accepted_tag: json['from_accepted_tag'] as bool,
    upload_id_str: json['upload_id_str'] as String,
    average_speed: (json['average_speed'] as num)?.toDouble(),
    max_speed: (json['max_speed'] as num)?.toDouble(),
    has_heartrate: json['has_heartrate'] as bool,
    heartrate_opt_out: json['heartrate_opt_out'] as bool,
    display_hide_heartrate_option:
        json['display_hide_heartrate_option'] as bool,
    elev_high: (json['elev_high'] as num)?.toDouble(),
    elev_low: (json['elev_low'] as num)?.toDouble(),
    pr_count: json['pr_count'] as int,
    total_photo_count: json['total_photo_count'] as int,
    has_kudoed: json['has_kudoed'] as bool,
    calories: (json['calories'] as num)?.toDouble(),
    perceived_exertion: (json['perceived_exertion'] as num)?.toDouble(),
    prefer_perceived_exertion: json['prefer_perceived_exertion'] as bool,
    segment_efforts: (json['segment_efforts'] as List)
        ?.map((e) => e == null
            ? null
            : SegmentEffortsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    splits_metric: (json['splits_metric'] as List)
        ?.map((e) => e == null
            ? null
            : SplitsMetricModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    splits_standard: (json['splits_standard'] as List)
        ?.map((e) => e == null
            ? null
            : SplitsMetricModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    laps: (json['laps'] as List)
        ?.map((e) =>
            e == null ? null : LapsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    best_efforts: (json['best_efforts'] as List)
        ?.map((e) => e == null
            ? null
            : BestEffortsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    photos: json['photos'] == null
        ? null
        : PhotosModel.fromJson(json['photos'] as Map<String, dynamic>),
    device_name: json['device_name'] as String,
    embed_token: json['embed_token'] as String,
    similar_activities: json['similar_activities'] == null
        ? null
        : SimilarActivitiesModel.fromJson(
            json['similar_activities'] as Map<String, dynamic>),
    available_zones:
        (json['available_zones'] as List)?.map((e) => e as int)?.toList(),
    external_id: json['external_id'] as String,
    location_city: json['location_city'] as String,
    location_state: json['location_state'] as String,
    location_country: json['location_country'] as String,
    gear_id: json['gear_id'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$DetailedActivityModelToJson(
        DetailedActivityModel instance) =>
    <String, dynamic>{
      'resource_state': instance.resource_state,
      'athlete': instance.athlete?.toJson(),
      'name': instance.name,
      'distance': instance.distance,
      'moving_time': instance.moving_time,
      'elapsed_time': instance.elapsed_time,
      'total_elevation_gain': instance.total_elevation_gain,
      'type': _$ActivityTypeEnumMap[instance.type],
      'workout_type': instance.workout_type,
      'id': instance.id,
      'external_id': instance.external_id,
      'upload_id': instance.upload_id,
      'start_date': instance.start_date?.toIso8601String(),
      'start_date_local': instance.start_date_local?.toIso8601String(),
      'timezone': instance.timezone,
      'utc_offset': instance.utc_offset,
      'start_latlng': instance.start_latlng,
      'end_latlng': instance.end_latlng,
      'location_city': instance.location_city,
      'location_state': instance.location_state,
      'location_country': instance.location_country,
      'start_latitude': instance.start_latitude,
      'start_longitude': instance.start_longitude,
      'achievement_count': instance.achievement_count,
      'kudos_count': instance.kudos_count,
      'comment_count': instance.comment_count,
      'athlete_count': instance.athlete_count,
      'photo_count': instance.photo_count,
      'trainer': instance.trainer,
      'commute': instance.commute,
      'manual': instance.manual,
      'private': instance.private,
      'visibility': instance.visibility,
      'flagged': instance.flagged,
      'gear_id': instance.gear_id,
      'from_accepted_tag': instance.from_accepted_tag,
      'upload_id_str': instance.upload_id_str,
      'average_speed': instance.average_speed,
      'max_speed': instance.max_speed,
      'has_heartrate': instance.has_heartrate,
      'heartrate_opt_out': instance.heartrate_opt_out,
      'display_hide_heartrate_option': instance.display_hide_heartrate_option,
      'elev_high': instance.elev_high,
      'elev_low': instance.elev_low,
      'pr_count': instance.pr_count,
      'total_photo_count': instance.total_photo_count,
      'has_kudoed': instance.has_kudoed,
      'description': instance.description,
      'calories': instance.calories,
      'perceived_exertion': instance.perceived_exertion,
      'prefer_perceived_exertion': instance.prefer_perceived_exertion,
      'segment_efforts':
          instance.segment_efforts?.map((e) => e?.toJson())?.toList(),
      'splits_metric':
          instance.splits_metric?.map((e) => e?.toJson())?.toList(),
      'splits_standard':
          instance.splits_standard?.map((e) => e?.toJson())?.toList(),
      'laps': instance.laps?.map((e) => e?.toJson())?.toList(),
      'best_efforts': instance.best_efforts?.map((e) => e?.toJson())?.toList(),
      'photos': instance.photos?.toJson(),
      'device_name': instance.device_name,
      'embed_token': instance.embed_token,
      'similar_activities': instance.similar_activities?.toJson(),
      'available_zones': instance.available_zones,
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
