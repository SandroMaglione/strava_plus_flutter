import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/trend.dart';

part 'trend_model.g.dart';

@JsonSerializable()
class TrendModel extends Trend {
  final List<double> speeds;
  final int current_activity_index;
  final double min_speed;
  final double mid_speed;
  final double max_speed;
  @override
  final int direction;

  const TrendModel({
    @required this.speeds,
    @required this.current_activity_index,
    @required this.min_speed,
    @required this.mid_speed,
    @required this.max_speed,
    @required this.direction,
  });

  factory TrendModel.fromJson(Map<String, dynamic> json) =>
      _$TrendModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrendModelToJson(this);

  @override
  int get currentActivityIndex => current_activity_index;

  @override
  double get maxSpeed => max_speed;

  @override
  double get midSpeed => mid_speed;

  @override
  double get minSpeed => min_speed;

  @override
  IList<double> get speedsList => ilist(speeds);
}
