import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/app/activity/data/models/detailed_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:retrofit/retrofit.dart';

part 'activity_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class ActivityRemoteDataSource {
  /// Factory constructor
  @factoryMethod
  factory ActivityRemoteDataSource(Dio dio) = _ActivityRemoteDataSource;

  @GET('https://www.strava.com/api/v3/activities/{id}')
  Future<DetailedActivityModel> getActivityById(
    @Path() int id,
    @Header('Authorization') String token,
    @Query('include_all_efforts') bool includeAllEfforts,
  );

  @GET('https://www.strava.com/api/v3/athlete/activities')
  Future<List<SummaryActivityModel>> getLoggedInAthleteActivities(
    @Header('Authorization') String token,
    @Query('before') String before,
    @Query('after') String after,
    @Query('page') int page,
    @Query('per_page') int per_page,
  );
}
