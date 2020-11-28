// import 'package:dio/dio.dart';
// import 'package:mobile_polimi_project/app/data/datasources/api/models/api_model.dart';
// import 'package:mobile_polimi_project/app/data/models/data_model.dart';
// import 'package:injectable/injectable.dart';
// import 'package:retrofit/retrofit.dart';

// part 'example_remote_data_source.g.dart';

// /// Remote request for clients information
// @injectable
// @RestApi()
// abstract class ExampleRemoteDataSource {
//   /// Factory constructor
//   @factoryMethod
//   factory ExampleRemoteDataSource(Dio dio) = _ExampleRemoteDataSource;

//   /// Example POST request with HttpResponse
//   @POST('{path}')
//   Future<HttpResponse<DataModel>> makePost(
//     @Path() String path,
//     @Header('Authorization') String token,
//     // Model defined inside api/models
//     @Body() ApiModel apiModel,
//   );

//   /// Example GET request
//   @GET('{path}')
//   Future<DataModel> makeGet(
//     @Path() String path,
//     @Header('Authorization') String token,
//     @Query('input') String input,
//   );

//   /// Example PUT request
//   @PUT('{path}')
//   Future<void> makePut(
//     @Path() String path,
//     @Header('Authorization') String token,
//     // Model defined inside api/models
//     @Body() ApiModel apiModel,
//   );
// }
