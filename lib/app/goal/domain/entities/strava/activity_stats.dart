import 'package:equatable/equatable.dart';

/// Statistics about user activities
/// https://developers.strava.com/docs/reference/#api-models-ActivityStats
abstract class ActivityStats extends Equatable {
  const ActivityStats();

  double get biggestRideDistance;
  double get biggestClimbElevationGain;
  // RecentRideTotals get recentRideTotals;
  // String get recentRunTotals;
  // String get recentSwimTotals;
  // String get ytdRideTotals;
  // String get ytdRunTotals;
  // String get ytdSwimTotals;
  // String get allRideTotals;
  // String get allRunTotals;
  // String get allSwimTotals;

  @override
  List<Object> get props => [
        biggestRideDistance,
        biggestClimbElevationGain,
      ];
}
