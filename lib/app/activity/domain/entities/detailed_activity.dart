import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/best_efforts.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/laps.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photos.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/similar_activities.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/splits_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/meta_athlete.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/list2.dart';

/// Single activity from Strava API
/// https://developers.strava.com/docs/reference/#api-models-DetailedActivity
abstract class DetailedActivity extends Equatable {
  const DetailedActivity();

  int get resourceState;
  MetaAthlete get athlete;
  String get name;
  int get distance;
  int get movingTime;
  int get elapsedTime;
  double get totalElevationGain;
  String get type;
  int get workoutType;
  int get id;
  String get externalId;
  int get uploadId;
  DateTime get startDate;
  DateTime get startDateLocal;
  String get timezone;
  int get utcOffset;
  List2<double> get startLatlng;
  List2<double> get endLatlng;
  String get locationCity;
  String get locationState;
  String get locationCountry;
  double get startLatitude;
  double get startLongitude;
  int get achievementCount;
  int get kudosCount;
  int get commentCount;
  int get athleteCount;
  int get photoCount;
  // Map get map;
  bool get trainer;
  bool get commute;
  bool get manual;
  bool get private;
  String get visibility;
  bool get flagged;
  String get gearId;
  bool get fromAcceptedTag;
  String get uploadIdStr;
  double get averageSpeed;
  double get maxSpeed;
  bool get hasHeartrate;
  bool get heartrateOptOut;
  bool get displayHideHeartrateOption;
  double get elevHigh;
  double get elevLow;
  int get prCount;
  int get totalPhotoCount;
  bool get hasKudoed;
  String get description;
  int get calories;
  int get perceivedExertion;
  bool get preferPerceivedExertion;
  IList<int> get segmentEfforts;
  IList<SplitsMetric> get splitsMetric;
  IList<SplitsMetric> get splitsStandard;
  IList<Laps> get lapsList;
  IList<BestEfforts> get bestEfforts;
  Photos get photos;
  String get deviceName;
  String get embedToken;
  SimilarActivities get similarActivities;
  IList<int> get availableZones;

  @override
  List<Object> get props => [id];
}
