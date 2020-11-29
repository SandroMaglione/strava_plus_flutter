// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'photo_primary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoPrimaryModel _$PhotoPrimaryModelFromJson(Map<String, dynamic> json) {
  return PhotoPrimaryModel(
    id: json['id'] as int,
    unique_id: json['unique_id'] as String,
    urls: (json['urls'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    source: json['source'] as int,
  );
}

Map<String, dynamic> _$PhotoPrimaryModelToJson(PhotoPrimaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unique_id': instance.unique_id,
      'urls': instance.urls,
      'source': instance.source,
    };
