// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'water_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WaterDataModel _$WaterDataModelFromJson(Map<String, dynamic> json) {
  return WaterDataModel(
    waterAmount: (json['waterAmount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$WaterDataModelToJson(WaterDataModel instance) =>
    <String, dynamic>{
      'waterAmount': instance.waterAmount,
    };
