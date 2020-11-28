import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/data/models/trend_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/similar_activities.dart';

part 'similar_activities_model.g.dart';

@JsonSerializable()
class SimilarActivitiesModel extends SimilarActivities {
  @override
  final TrendModel trend;
  final int effort_count;
  final double average_speed;
  final double min_average_speed;
  final double mid_average_speed;
  final double max_average_speed;
  final String pr_rank;
  final String frequency_milestone;
  final int resource_state;

  const SimilarActivitiesModel({
    @required this.effort_count,
    @required this.average_speed,
    @required this.min_average_speed,
    @required this.mid_average_speed,
    @required this.max_average_speed,
    @required this.trend,
    @required this.resource_state,
    this.pr_rank,
    this.frequency_milestone,
  });

  factory SimilarActivitiesModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarActivitiesModelFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarActivitiesModelToJson(this);

  @override
  double get averageSpeed => average_speed;

  @override
  int get effortCount => effort_count;

  @override
  Option<String> get frequencyMilestoneOption => optionOf(frequency_milestone);

  @override
  double get maxAverageSpeed => max_average_speed;

  @override
  double get midAverageSpeed => mid_average_speed;

  @override
  double get minAverageSpeed => min_average_speed;

  @override
  Option<String> get prRankOption => optionOf(pr_rank);

  @override
  int get resourceState => resource_state;
}
