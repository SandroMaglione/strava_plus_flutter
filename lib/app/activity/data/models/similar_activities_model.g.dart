// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'similar_activities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarActivitiesModel _$SimilarActivitiesModelFromJson(
    Map<String, dynamic> json) {
  return SimilarActivitiesModel(
    effort_count: json['effort_count'] as int,
    average_speed: (json['average_speed'] as num)?.toDouble(),
    min_average_speed: (json['min_average_speed'] as num)?.toDouble(),
    mid_average_speed: (json['mid_average_speed'] as num)?.toDouble(),
    max_average_speed: (json['max_average_speed'] as num)?.toDouble(),
    trend: json['trend'] == null
        ? null
        : TrendModel.fromJson(json['trend'] as Map<String, dynamic>),
    resource_state: json['resource_state'] as int,
    pr_rank: json['pr_rank'] as String,
    frequency_milestone: json['frequency_milestone'] as String,
  );
}

Map<String, dynamic> _$SimilarActivitiesModelToJson(
        SimilarActivitiesModel instance) =>
    <String, dynamic>{
      'trend': instance.trend?.toJson(),
      'effort_count': instance.effort_count,
      'average_speed': instance.average_speed,
      'min_average_speed': instance.min_average_speed,
      'mid_average_speed': instance.mid_average_speed,
      'max_average_speed': instance.max_average_speed,
      'pr_rank': instance.pr_rank,
      'frequency_milestone': instance.frequency_milestone,
      'resource_state': instance.resource_state,
    };
