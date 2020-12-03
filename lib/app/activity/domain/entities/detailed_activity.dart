import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/best_efforts.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/laps.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photos.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/segment_efforts.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/similar_activities.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/splits_metric.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/meta_athlete.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

/// Single activity from Strava API
/// https://developers.strava.com/docs/reference/#api-models-DetailedActivity
abstract class DetailedActivity extends Equatable {
  const DetailedActivity();

  int get resourceState;
  MetaAthlete get athlete;
  String get name;
  double get distance;
  int get movingTime;
  int get elapsedTime;
  double get totalElevationGain;
  ActivityType get type;
  int get workoutType;
  int get id;
  int get uploadId;
  DateTime get startDate;
  DateTime get startDateLocal;
  String get timezone;
  double get utcOffset;
  List2<double> get startLatlng;
  List2<double> get endLatlng;
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
  double get calories;
  double get perceivedExertion;
  bool get preferPerceivedExertion;
  IList<SegmentEfforts> get segmentEfforts;
  IList<SplitsMetric> get splitsMetric;
  IList<SplitsMetric> get splitsStandard;
  IList<Laps> get lapsList;
  IList<BestEfforts> get bestEfforts;
  Photos get photos;
  String get deviceName;
  String get embedToken;
  SimilarActivities get similarActivities;
  IList<int> get availableZones;

  Option<String> get externalIdOption;
  Option<String> get locationCityOption;
  Option<String> get locationStateOption;
  Option<String> get locationCountryOption;
  Option<String> get gearIdOption;
  Option<String> get descriptionOption;

  @override
  List<Object> get props => [id];
}
