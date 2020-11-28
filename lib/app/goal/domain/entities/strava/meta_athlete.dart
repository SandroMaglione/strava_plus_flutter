import 'package:equatable/equatable.dart';

/// Strava user identifier
/// https://developers.strava.com/docs/reference/#api-models-MetaAthlete
abstract class MetaAthlete extends Equatable {
  const MetaAthlete();

  int get id;

  @override
  List<Object> get props => [id];
}
