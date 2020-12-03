import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/segment.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

part 'segment_model.g.dart';

@JsonSerializable()
class SegmentModel extends Segment {
  @override
  final int id;
  final int resource_state;
  @override
  final String name;
  final ActivityType activity_type;
  @override
  final double distance;
  final double average_grade;
  final double maximum_grade;
  final double elevation_high;
  final double elevation_low;
  final List<double> start_latlng;
  final List<double> end_latlng;
  final int climb_category;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final bool private;
  @override
  final bool hazardous;
  @override
  final bool starred;

  const SegmentModel({
    @required this.id,
    @required this.resource_state,
    @required this.name,
    @required this.activity_type,
    @required this.distance,
    @required this.average_grade,
    @required this.maximum_grade,
    @required this.elevation_high,
    @required this.elevation_low,
    @required this.start_latlng,
    @required this.end_latlng,
    @required this.climb_category,
    @required this.city,
    @required this.state,
    @required this.country,
    @required this.private,
    @required this.hazardous,
    @required this.starred,
  });

  factory SegmentModel.fromJson(Map<String, dynamic> json) =>
      _$SegmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$SegmentModelToJson(this);

  @override
  ActivityType get activityType => activity_type;

  @override
  double get averageGrade => average_grade;

  @override
  int get climbCategory => climb_category;

  @override
  double get elevationHigh => elevation_high;

  @override
  double get elevationLow => elevation_low;

  @override
  List2<double> get endLatlng => List2(end_latlng);

  @override
  double get maximumGrade => maximum_grade;

  @override
  int get resourceState => resource_state;

  @override
  List2<double> get startLatlng => List2(start_latlng);
}
