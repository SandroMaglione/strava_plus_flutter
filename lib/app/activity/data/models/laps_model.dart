import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/laps.dart';
import 'package:mobile_polimi_project/app/athlete/data/models/meta_athlete_model.dart';

part 'laps_model.g.dart';

@JsonSerializable()
class LapsModel extends Laps {
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
  final double total_elevation_gain;
  final double average_speed;
  final double max_speed;
  final int lap_index;
  @override
  final int split;
  @override
  final int paceZone;

  const LapsModel({
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
    @required this.total_elevation_gain,
    @required this.average_speed,
    @required this.max_speed,
    @required this.lap_index,
    @required this.split,
    @required this.paceZone,
  });

  factory LapsModel.fromJson(Map<String, dynamic> json) =>
      _$LapsModelFromJson(json);
  Map<String, dynamic> toJson() => _$LapsModelToJson(this);

  @override
  double get averageSpeed => average_speed;

  @override
  int get elapsedTime => elapsed_time;

  @override
  int get endIndex => end_index;

  @override
  int get lapIndex => lap_index;

  @override
  double get maxSpeed => max_speed;

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
  double get totalElevationGain => total_elevation_gain;
}
