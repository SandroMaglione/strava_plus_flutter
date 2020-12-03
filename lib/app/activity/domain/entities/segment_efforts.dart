import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/segment.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/meta_athlete.dart';

abstract class SegmentEfforts extends Equatable {
  const SegmentEfforts();

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
  double get averageCadence;
  bool get deviceWatts;
  double get averageWatts;
  Segment get segment;
  String get komRank;
  String get prRank;
  IList<int> get achievementsList;
  bool get hidden;

  @override
  List<Object> get props => [id];
}
