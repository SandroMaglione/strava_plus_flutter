import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_token.g.dart';

@JsonSerializable()
class AuthToken {
  final String token_type;
  final int expires_at;
  final int expires_in;
  final String refresh_token;
  final String access_token;

  const AuthToken({
    @required this.token_type,
    @required this.expires_at,
    @required this.expires_in,
    @required this.refresh_token,
    @required this.access_token,
  });

  factory AuthToken.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenFromJson(json);
  Map<String, dynamic> toJson() => _$AuthTokenToJson(this);
}
