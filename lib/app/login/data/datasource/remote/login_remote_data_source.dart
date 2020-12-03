import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/app/athlete/data/models/detailed_athlete_model.dart';
import 'package:mobile_polimi_project/app/login/data/models/auth_token.dart';
import 'package:retrofit/retrofit.dart';

part 'login_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class LoginRemoteDataSource {
  @factoryMethod
  factory LoginRemoteDataSource(Dio dio) = _LoginRemoteDataSource;

  @POST('https://www.strava.com/oauth/token')
  Future<AuthToken> getAuthToken(
    @Query('client_id') int clientId,
    @Query('client_secret') String clientSecret,
    @Query('code') String code,
    @Query('grant_type') String grantType,
  );

  @POST('https://www.strava.com/oauth/token')
  Future<AuthToken> getRefreshToken(
    @Query('client_id') int clientId,
    @Query('client_secret') String clientSecret,
    @Query('refresh_token') String refreshToken,
    @Query('grant_type') String grantType,
  );

  @GET('https://www.strava.com/api/v3/athlete')
  Future<DetailedAthleteModel> getStravaAthlete(
    @Header('Authorization') String token,
  );
}
