// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'setting_parameters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingParametersModel _$SettingParametersModelFromJson(
    Map<String, dynamic> json) {
  return SettingParametersModel(
    themeOption: json['themeOption'] == null
        ? null
        : ThemeOption.fromJson(json['themeOption'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SettingParametersModelToJson(
        SettingParametersModel instance) =>
    <String, dynamic>{
      'themeOption': instance.themeOption?.toJson(),
    };
