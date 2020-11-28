import 'package:equatable/equatable.dart';

abstract class SplitsMetric extends Equatable {
  const SplitsMetric();

  double get distance;
  int get elapsedTime;
  double get elevationDifference;
  int get movingTime;
  int get split;
  double get averageSpeed;
  double get averageGradeAdjustedSpeed;
  int get paceZone;

  @override
  List<Object> get props => [
        distance,
        elapsedTime,
        elevationDifference,
        movingTime,
        split,
        averageSpeed,
        averageGradeAdjustedSpeed,
        paceZone,
      ];
}
