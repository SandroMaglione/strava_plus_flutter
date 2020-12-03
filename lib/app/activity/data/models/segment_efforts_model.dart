import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/data/models/segment_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/segment_efforts.dart';
import 'package:mobile_polimi_project/app/athlete/data/models/meta_athlete_model.dart';

part 'segment_efforts_model.g.dart';

@JsonSerializable()
class SegmentEffortsModel extends SegmentEfforts {
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
  final double distance;
  final int start_index;
  final int end_index;
  final double average_cadence;
  final bool device_watts;
  final double average_watts;
  @override
  final SegmentModel segment;
  final String kom_rank;
  final String pr_rank;
  final List<int> achievements;
  @override
  final bool hidden;

  const SegmentEffortsModel({
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
    @required this.average_cadence,
    @required this.device_watts,
    @required this.average_watts,
    @required this.segment,
    @required this.kom_rank,
    @required this.pr_rank,
    @required this.achievements,
    @required this.hidden,
  });

  factory SegmentEffortsModel.fromJson(Map<String, dynamic> json) =>
      _$SegmentEffortsModelFromJson(json);
  Map<String, dynamic> toJson() => _$SegmentEffortsModelToJson(this);

  @override
  IList<int> get achievementsList => ilist(achievements);

  @override
  double get averageCadence => average_cadence;

  @override
  double get averageWatts => average_watts;

  @override
  bool get deviceWatts => device_watts;

  @override
  int get elapsedTime => elapsed_time;

  @override
  int get endIndex => end_index;

  @override
  String get komRank => kom_rank;

  @override
  int get movingTime => moving_time;

  @override
  String get prRank => pr_rank;

  @override
  int get resourceState => resource_state;

  @override
  DateTime get startDate => start_date;

  @override
  DateTime get startDateLocal => start_date_local;

  @override
  int get startIndex => start_index;
}
