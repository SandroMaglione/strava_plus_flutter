// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'weight_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeightDataModel _$WeightDataModelFromJson(Map<String, dynamic> json) {
  return WeightDataModel(
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
    value: (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$WeightDataModelToJson(WeightDataModel instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime?.toIso8601String(),
      'value': instance.value,
    };
