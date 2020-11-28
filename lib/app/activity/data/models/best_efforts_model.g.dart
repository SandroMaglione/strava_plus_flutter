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
      'activity': instance.activity?.toJson(),
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
