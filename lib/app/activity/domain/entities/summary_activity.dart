import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/meta_athlete.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

/// Summary activity when getting list of activities
/// https://developers.strava.com/docs/reference/#api-models-SummaryActivity
abstract class SummaryActivity extends Equatable {
  const SummaryActivity();

  int get resourceState;
  int get id;
  num get uploadId;
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
  Tuple2<double, double> get startLatlng;
  Tuple2<double, double> get endLatlng;
  int get achievementCount;
  int get kudosCount;
  int get commentCount;
  int get athleteCount;
  int get photoCount;
  int get totalPhotoCount;
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
  int get weightedAverageWatts;
  // String get description;
  // String get photos;
  // String get gear;
  // double get calories;
  // IList<int> get segmentEfforts;
  // String get deviceName;
  // String get embedToken;

  String get visibility;
  bool get fromAcceptedTag;
  // double get averageCadence;
  bool get hasHeartrate;
  bool get heartrateOptOut;
  bool get displayHideHeartrateOption;
  // double get averageHeartrate;
  // int get maxHeartrate;
  int get prCount;
  // int get sufferScore;
  double get utcOffset;

  Option<String> get externalIdOption;
  Option<String> get locationCityOption;
  Option<String> get locationStateOption;
  Option<String> get locationCountryOption;
  Option<String> get gearIdOption;
  Option<double> get kilojoulesOption;
  Option<double> get averageWattsOption;
  Option<bool> get deviceWattsOption;
  Option<int> get maxWattsOption;

  SummaryActivityModel get toModel;

  String get startDateFormat =>
      DateFormat('dd MMMM yyyy - HH:mm').format(startDate);
  String get startDateLocalFormat =>
      DateFormat('dd MMMM yyyy - HH:mm').format(startDateLocal);

  @override
  List<Object> get props => [id];
}
