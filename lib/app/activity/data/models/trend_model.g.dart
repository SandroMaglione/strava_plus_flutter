// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'trend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendModel _$TrendModelFromJson(Map<String, dynamic> json) {
  return TrendModel(
    speeds:
        (json['speeds'] as List)?.map((e) => (e as num)?.toDouble())?.toList(),
    current_activity_index: json['current_activity_index'] as int,
    min_speed: (json['min_speed'] as num)?.toDouble(),
    mid_speed: (json['mid_speed'] as num)?.toDouble(),
    max_speed: (json['max_speed'] as num)?.toDouble(),
    direction: json['direction'] as int,
  );
}

Map<String, dynamic> _$TrendModelToJson(TrendModel instance) =>
    <String, dynamic>{
      'speeds': instance.speeds,
      'current_activity_index': instance.current_activity_index,
      'min_speed': instance.min_speed,
      'mid_speed': instance.mid_speed,
      'max_speed': instance.max_speed,
      'direction': instance.direction,
    };
