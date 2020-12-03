import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/meta_athlete.dart';

abstract class Laps extends Equatable {
  const Laps();

  int get id;
  int get resourceState;
  String get name;
  MetaAthlete get activity;
  MetaAthlete get athlete;
  int get elapsedTime;
  int get movingTime;
  DateTime get startDate;
  DateTime get startDateLocal;
  double get distance;
  int get startIndex;
  int get endIndex;
  double get totalElevationGain;
  double get averageSpeed;
  double get maxSpeed;
  int get lapIndex;
  int get split;
  int get paceZone;

  @override
  List<Object> get props => [id];
}
