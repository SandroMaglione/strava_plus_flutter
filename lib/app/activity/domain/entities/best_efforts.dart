import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/meta_athlete.dart';

abstract class BestEfforts extends Equatable {
  const BestEfforts();

  int get id;
  int get resourceState;
  String get name;
  MetaAthlete get activity;
  MetaAthlete get athlete;
  int get elapsedTime;
  int get movingTime;
  DateTime get startDate;
  DateTime get startDateLocal;
  int get distance;
  int get startIndex;
  int get endIndex;
  Option<String> get prRankOption;
  IList<int> get achievementsList;

  @override
  List<Object> get props => [id];
}
