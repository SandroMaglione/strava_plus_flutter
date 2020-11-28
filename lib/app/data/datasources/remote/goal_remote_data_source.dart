import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/app/goal/data/models/detailed_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/summary_activity_model.dart';
import 'package:retrofit/retrofit.dart';

part 'goal_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class GoalRemoteDataSource {
  /// Factory constructor
  @factoryMethod
  factory GoalRemoteDataSource(Dio dio) = _GoalRemoteDataSource;

  @GET('activities/{id}')
  Future<DetailedActivityModel> getActivityById(
    @Path() int id,
    @Header('Authorization') String token,
    @Query('include_all_efforts') bool includeAllEfforts,
  );

  @GET('athlete/activities')
  Future<List<SummaryActivityModel>> getLoggedInAthleteActivities(
    @Header('Authorization') String token,
    @Query('before') int before,
    @Query('after') int after,
    @Query('page') int page,
    @Query('per_page') int per_page,
  );
}
