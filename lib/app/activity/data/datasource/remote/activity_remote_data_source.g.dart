// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, always_declare_return_types, public_member_api_docs

part of 'activity_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ActivityRemoteDataSource implements ActivityRemoteDataSource {
  _ActivityRemoteDataSource(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<DetailedActivityModel> getActivityById(
      id, token, includeAllEfforts) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(includeAllEfforts, 'includeAllEfforts');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_all_efforts': includeAllEfforts
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'https://www.strava.com/api/v3/activities/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = DetailedActivityModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<SummaryActivityModel>> getLoggedInAthleteActivities(
      token, before, after, page, per_page) async {
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(before, 'before');
    ArgumentError.checkNotNull(after, 'after');
    ArgumentError.checkNotNull(page, 'page');
    ArgumentError.checkNotNull(per_page, 'per_page');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'before': before,
      r'after': after,
      r'page': page,
      r'per_page': per_page
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        'https://www.strava.com/api/v3/athlete/activities',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) =>
            SummaryActivityModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
