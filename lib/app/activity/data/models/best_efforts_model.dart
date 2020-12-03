import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/best_efforts.dart';
import 'package:mobile_polimi_project/app/athlete/data/models/meta_athlete_model.dart';

part 'best_efforts_model.g.dart';

@JsonSerializable()
class BestEffortsModel extends BestEfforts {
  @override
  final int id;
  final int resource_state;
  @override
  final String name;
  @override
  final MetaAthleteModel activity;
  @override
  final MetaAthleteModel athlete;
  final int elapsed_time;
  final int moving_time;
  final DateTime start_date;
  final DateTime start_date_local;
  @override
  final int distance;
  final int start_index;
  final int end_index;
  final String pr_rank;
  final List<int> achievements;

  const BestEffortsModel({
    @required this.id,
    @required this.resource_state,
    @required this.name,
    @required this.activity,
    @required this.athlete,
    @required this.elapsed_time,
    @required this.moving_time,
    @required this.start_date,
    @required this.start_date_local,
    @required this.distance,
    @required this.start_index,
    @required this.end_index,
    @required this.pr_rank,
    @required this.achievements,
  });

  factory BestEffortsModel.fromJson(Map<String, dynamic> json) =>
      _$BestEffortsModelFromJson(json);
  Map<String, dynamic> toJson() => _$BestEffortsModelToJson(this);

  @override
  IList<int> get achievementsList => ilist(achievements);

  @override
  int get elapsedTime => elapsed_time;

  @override
  int get endIndex => end_index;

  @override
  int get movingTime => moving_time;

  @override
  int get resourceState => resource_state;

  @override
  DateTime get startDate => start_date;

  @override
  DateTime get startDateLocal => start_date_local;

  @override
  int get startIndex => start_index;

  @override
  Option<String> get prRankOption => optionOf(pr_rank);
}
