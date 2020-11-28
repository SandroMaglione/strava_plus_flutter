import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/trend.dart';

abstract class SimilarActivities extends Equatable {
  const SimilarActivities();

  int get effortCount;
  double get averageSpeed;
  double get minAverageSpeed;
  double get midAverageSpeed;
  double get maxAverageSpeed;
  Trend get trend;
  int get resourceState;
  Option<String> get prRankOption;
  Option<String> get frequencyMilestoneOption;

  @override
  List<Object> get props => [
        effortCount,
        averageSpeed,
        minAverageSpeed,
        midAverageSpeed,
        maxAverageSpeed,
        prRankOption,
        frequencyMilestoneOption,
        trend,
        resourceState,
      ];
}
