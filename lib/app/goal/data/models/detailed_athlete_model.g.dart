// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'detailed_athlete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedAthleteModel _$DetailedAthleteModelFromJson(Map<String, dynamic> json) {
  return DetailedAthleteModel(
    id: json['id'] as int,
    resource_state: json['resource_state'] as int,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    profile_medium: json['profile_medium'] as String,
    profile: json['profile'] as String,
    city: json['city'] as String,
    state: json['state'] as String,
    sex: json['sex'] as String,
    premium: json['premium'] as bool,
    summit: json['summit'] as bool,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    follower_count: json['follower_count'] as int,
    friend_count: json['friend_count'] as int,
    measurement_preference: json['measurement_preference'] as String,
    ftp: json['ftp'] as int,
    weight: (json['weight'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DetailedAthleteModelToJson(
        DetailedAthleteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource_state': instance.resource_state,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'profile_medium': instance.profile_medium,
      'profile': instance.profile,
      'city': instance.city,
      'state': instance.state,
      'sex': instance.sex,
      'premium': instance.premium,
      'summit': instance.summit,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'follower_count': instance.follower_count,
      'friend_count': instance.friend_count,
      'measurement_preference': instance.measurement_preference,
      'ftp': instance.ftp,
      'weight': instance.weight,
    };
