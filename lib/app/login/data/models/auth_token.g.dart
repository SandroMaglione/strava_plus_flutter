// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return AuthToken(
    token_type: json['token_type'] as String,
    expires_at: json['expires_at'] as int,
    expires_in: json['expires_in'] as int,
    refresh_token: json['refresh_token'] as String,
    access_token: json['access_token'] as String,
  );
}

Map<String, dynamic> _$AuthTokenToJson(AuthToken instance) => <String, dynamic>{
      'token_type': instance.token_type,
      'expires_at': instance.expires_at,
      'expires_in': instance.expires_in,
      'refresh_token': instance.refresh_token,
      'access_token': instance.access_token,
    };
