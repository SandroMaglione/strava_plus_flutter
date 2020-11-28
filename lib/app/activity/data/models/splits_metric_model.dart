import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/splits_metric.dart';

part 'splits_metric_model.g.dart';

@JsonSerializable()
class SplitsMetricModel extends SplitsMetric {
  @override
  final double distance;
  final int elapsed_time;
  final double elevation_difference;
  final int moving_time;
  @override
  final int split;
  final double average_speed;
  final double average_grade_adjusted_speed;
  final int pace_zone;

  const SplitsMetricModel({
    @required this.distance,
    @required this.elapsed_time,
    @required this.elevation_difference,
    @required this.moving_time,
    @required this.split,
    @required this.average_speed,
    @required this.average_grade_adjusted_speed,
    @required this.pace_zone,
  });

  factory SplitsMetricModel.fromJson(Map<String, dynamic> json) =>
      _$SplitsMetricModelFromJson(json);
  Map<String, dynamic> toJson() => _$SplitsMetricModelToJson(this);

  @override
  double get averageGradeAdjustedSpeed => average_grade_adjusted_speed;

  @override
  double get averageSpeed => average_speed;

  @override
  int get elapsedTime => elapsed_time;

  @override
  double get elevationDifference => elevation_difference;

  @override
  int get movingTime => moving_time;

  @override
  int get paceZone => pace_zone;
}
