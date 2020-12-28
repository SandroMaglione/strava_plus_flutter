// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'key_weight_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyWeightDataModel _$KeyWeightDataModelFromJson(Map<String, dynamic> json) {
  return KeyWeightDataModel(
    index: json['index'] as int,
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
    value: (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$KeyWeightDataModelToJson(KeyWeightDataModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'dateTime': instance.dateTime?.toIso8601String(),
      'value': instance.value,
    };
