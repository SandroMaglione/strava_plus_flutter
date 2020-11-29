// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'login_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LoginRemoteDataSource implements LoginRemoteDataSource {
  _LoginRemoteDataSource(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<AuthToken> getAuthToken(
      clientId, clientSecret, code, grantType) async {
    ArgumentError.checkNotNull(clientId, 'clientId');
    ArgumentError.checkNotNull(clientSecret, 'clientSecret');
    ArgumentError.checkNotNull(code, 'code');
    ArgumentError.checkNotNull(grantType, 'grantType');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'client_id': clientId,
      r'client_secret': clientSecret,
      r'code': code,
      r'grant_type': grantType
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'https://www.strava.com/oauth/token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthToken.fromJson(_result.data);
    return value;
  }

  @override
  Future<AuthToken> getRefreshToken(
      clientId, clientSecret, refreshToken, grantType) async {
    ArgumentError.checkNotNull(clientId, 'clientId');
    ArgumentError.checkNotNull(clientSecret, 'clientSecret');
    ArgumentError.checkNotNull(refreshToken, 'refreshToken');
    ArgumentError.checkNotNull(grantType, 'grantType');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'client_id': clientId,
      r'client_secret': clientSecret,
      r'refresh_token': refreshToken,
      r'grant_type': grantType
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'https://www.strava.com/oauth/token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthToken.fromJson(_result.data);
    return value;
  }

  @override
  Future<DetailedAthleteModel> getStravaAthlete(token) async {
    ArgumentError.checkNotNull(token, 'token');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'https://www.strava.com/api/v3/athlete',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = DetailedAthleteModel.fromJson(_result.data);
    return value;
  }
}
