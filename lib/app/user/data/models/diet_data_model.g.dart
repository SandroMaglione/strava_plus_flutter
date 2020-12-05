// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'diet_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DietDataModel _$DietDataModelFromJson(Map<String, dynamic> json) {
  return DietDataModel(
    eatNight: json['eatNight'] as bool,
    eatBreakfast: json['eatBreakfast'] as bool,
    eatMidMorning: json['eatMidMorning'] as bool,
    eatLunch: json['eatLunch'] as bool,
    eatMidAfternoon: json['eatMidAfternoon'] as bool,
    eatDinner: json['eatDinner'] as bool,
    eatAfterDinner: json['eatAfterDinner'] as bool,
  );
}

Map<String, dynamic> _$DietDataModelToJson(DietDataModel instance) =>
    <String, dynamic>{
      'eatNight': instance.eatNight,
      'eatBreakfast': instance.eatBreakfast,
      'eatMidMorning': instance.eatMidMorning,
      'eatLunch': instance.eatLunch,
      'eatMidAfternoon': instance.eatMidAfternoon,
      'eatDinner': instance.eatDinner,
      'eatAfterDinner': instance.eatAfterDinner,
    };
