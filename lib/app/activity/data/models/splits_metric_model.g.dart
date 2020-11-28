// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'splits_metric_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SplitsMetricModel _$SplitsMetricModelFromJson(Map<String, dynamic> json) {
  return SplitsMetricModel(
    distance: (json['distance'] as num)?.toDouble(),
    elapsed_time: json['elapsed_time'] as int,
    elevation_difference: (json['elevation_difference'] as num)?.toDouble(),
    moving_time: json['moving_time'] as int,
    split: json['split'] as int,
    average_speed: (json['average_speed'] as num)?.toDouble(),
    average_grade_adjusted_speed:
        (json['average_grade_adjusted_speed'] as num)?.toDouble(),
    pace_zone: json['pace_zone'] as int,
  );
}

Map<String, dynamic> _$SplitsMetricModelToJson(SplitsMetricModel instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'elapsed_time': instance.elapsed_time,
      'elevation_difference': instance.elevation_difference,
      'moving_time': instance.moving_time,
      'split': instance.split,
      'average_speed': instance.average_speed,
      'average_grade_adjusted_speed': instance.average_grade_adjusted_speed,
      'pace_zone': instance.pace_zone,
    };
