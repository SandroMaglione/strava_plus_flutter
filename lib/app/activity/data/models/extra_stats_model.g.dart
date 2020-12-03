// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'extra_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtraStatsModel _$ExtraStatsModelFromJson(Map<String, dynamic> json) {
  return ExtraStatsModel(
    rpeValue: json['rpeValue'] as int,
    moodValue: json['moodValue'] as int,
  );
}

Map<String, dynamic> _$ExtraStatsModelToJson(ExtraStatsModel instance) =>
    <String, dynamic>{
      'rpeValue': instance.rpeValue,
      'moodValue': instance.moodValue,
    };
