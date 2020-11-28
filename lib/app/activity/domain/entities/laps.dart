import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/meta_athlete.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

abstract class Laps extends Equatable {
  const Laps();

  int get id;
  int get resourceState;
  String get name;
  ActivityType get activity;
  MetaAthlete get athlete;
  int get elapsedTime;
  int get movingTime;
  DateTime get startDate;
  DateTime get startDateLocal;
  int get distance;
  int get startIndex;
  int get endIndex;
  int get totalElevationGain;
  double get averageSpeed;
  double get maxSpeed;
  int get lapIndex;
  int get split;
  int get paceZone;

  @override
  List<Object> get props => [
        id,
        resourceState,
        name,
        activity,
        athlete,
        elapsedTime,
        movingTime,
        startDate,
        startDateLocal,
        distance,
        startIndex,
        endIndex,
        totalElevationGain,
        averageSpeed,
        maxSpeed,
        lapIndex,
        split,
        paceZone,
      ];
}
