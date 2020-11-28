import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/meta_athlete.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

/// Single activity from Strava API
/// https://developers.strava.com/docs/reference/#api-models-DetailedActivity
abstract class DetailedActivity extends Equatable {
  const DetailedActivity();

  int get id;
  String get externalId;
  int get uploadId;
  MetaAthlete get athlete;
  String get name;
  double get distance;
  int get movingTime;
  int get elapsedTime;
  double get totalElevationGain;
  double get elevHigh;
  double get elevLow;
  ActivityType get type;
  DateTime get startDate;
  DateTime get startDateLocal;
  String get timezone;
  int get utcOffset;
  Tuple2<double, double> get startLatlng;
  Tuple2<double, double> get endLatlng;
  int get achievementCount;
  int get kudosCount;
  int get commentCount;
  int get athleteCount;
  int get photoCount;
  // String get map;
  bool get trainer;
  bool get commute;
  bool get manual;
  bool get private;
  bool get flagged;
  int get workoutType;
  String get uploadIdStr;
  double get averageSpeed;
  double get maxSpeed;
  bool get hasKudoed;
  String get gearId;
  double get kilojoules;
  double get averageWatts;
  bool get deviceWatts;
  int get maxWatts;
  int get weightedAverageWatts;
  String get description;
  // String get photos;
  // String get gear;
  double get calories;
  // IList<int> get segmentEfforts;
  String get deviceName;
  String get embedToken;
  // IList<int> get splitsMetric;
  // String get splitsStandard;
  // IList<int> get laps;
  // String get bestEfforts;

  // bool get fromAcceptedTag;
  // double get averageCadence;
  // int get averageTemp;
  // bool get hasHeartrate;
  // int get prCount;
  // int get totalPhotoCount;
  // String get sufferScore;
  // String get partnerBrandTag;
  // IList<int> get highlightedKudosers;
  // bool get segmentLeaderboardOptOut;
  // bool get leaderboardOptOut;

  @override
  List<Object> get props => [id];
}
