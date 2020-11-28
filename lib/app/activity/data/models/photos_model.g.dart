// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotosModel _$PhotosModelFromJson(Map<String, dynamic> json) {
  return PhotosModel(
    primary: json['primary'] as String,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$PhotosModelToJson(PhotosModel instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'count': instance.count,
    };
