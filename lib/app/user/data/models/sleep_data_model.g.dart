// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'sleep_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SleepDataModel _$SleepDataModelFromJson(Map<String, dynamic> json) {
  return SleepDataModel(
    wakeUp: json['wakeUp'] == null
        ? null
        : DateTime.parse(json['wakeUp'] as String),
    goToBed: json['goToBed'] == null
        ? null
        : DateTime.parse(json['goToBed'] as String),
  );
}

Map<String, dynamic> _$SleepDataModelToJson(SleepDataModel instance) =>
    <String, dynamic>{
      'wakeUp': instance.wakeUp?.toIso8601String(),
      'goToBed': instance.goToBed?.toIso8601String(),
    };
