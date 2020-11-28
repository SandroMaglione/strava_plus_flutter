// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'laps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LapsModel _$LapsModelFromJson(Map<String, dynamic> json) {
  return LapsModel(
    id: json['id'] as int,
    resource_state: json['resource_state'] as int,
    name: json['name'] as String,
    activity: json['activity'] == null
        ? null
        : MetaAthleteModel.fromJson(json['activity'] as Map<String, dynamic>),
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
    distance: (json['distance'] as num)?.toDouble(),
    start_index: json['start_index'] as int,
    end_index: json['end_index'] as int,
    total_elevation_gain: (json['total_elevation_gain'] as num)?.toDouble(),
    average_speed: (json['average_speed'] as num)?.toDouble(),
    max_speed: (json['max_speed'] as num)?.toDouble(),
    lap_index: json['lap_index'] as int,
    split: json['split'] as int,
    paceZone: json['paceZone'] as int,
  );
}

Map<String, dynamic> _$LapsModelToJson(LapsModel instance) => <String, dynamic>{
      'id': instance.id,
      'resource_state': instance.resource_state,
      'name': instance.name,
      'activity': instance.activity?.toJson(),
      'athlete': instance.athlete?.toJson(),
      'elapsed_time': instance.elapsed_time,
      'moving_time': instance.moving_time,
      'start_date': instance.start_date?.toIso8601String(),
      'start_date_local': instance.start_date_local?.toIso8601String(),
      'distance': instance.distance,
      'start_index': instance.start_index,
      'end_index': instance.end_index,
      'total_elevation_gain': instance.total_elevation_gain,
      'average_speed': instance.average_speed,
      'max_speed': instance.max_speed,
      'lap_index': instance.lap_index,
      'split': instance.split,
      'paceZone': instance.paceZone,
    };
