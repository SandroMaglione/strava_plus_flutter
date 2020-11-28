import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/trend.dart';

abstract class SimilarActivities extends Equatable {
  const SimilarActivities();

  int get effortCount;
  double get averageSpeed;
  double get minAverageSpeed;
  double get midAverageSpeed;
  double get maxAverageSpeed;
  String get prRank;
  String get frequencyMilestone;
  Trend get trend;
  int get resourceState;

  @override
  List<Object> get props => [
        effortCount,
        averageSpeed,
        minAverageSpeed,
        midAverageSpeed,
        maxAverageSpeed,
        prRank,
        frequencyMilestone,
        trend,
        resourceState,
      ];
}
