import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/data/models/best_efforts_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/laps_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/photos_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/segment_efforts_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/similar_activities_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/splits_metric_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/best_efforts.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/laps.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/segment_efforts.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/similar_activities.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/splits_metric.dart';
import 'package:mobile_polimi_project/app/athlete/data/models/meta_athlete_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

part 'detailed_activity_model.g.dart';

@JsonSerializable()
class DetailedActivityModel extends DetailedActivity {
  final int resource_state;
  @override
  final MetaAthleteModel athlete;
  @override
  final String name;
  @override
  final double distance;
  final int moving_time;
  final int elapsed_time;
  final double total_elevation_gain;
  @override
  final ActivityType type;
  final int workout_type;
  @override
  final int id;
  final String external_id;
  final int upload_id;
  final DateTime start_date;
  final DateTime start_date_local;
  @override
  final String timezone;
  final double utc_offset;
  final List<double> start_latlng;
  final List<double> end_latlng;
  final String location_city;
  final String location_state;
  final String location_country;
  final double start_latitude;
  final double start_longitude;
  final int achievement_count;
  final int kudos_count;
  final int comment_count;
  final int athlete_count;
  final int photo_count;
  // final Map map;
  @override
  final bool trainer;
  @override
  final bool commute;
  @override
  final bool manual;
  @override
  final bool private;
  @override
  final String visibility;
  @override
  final bool flagged;
  final String gear_id;
  final bool from_accepted_tag;
  final String upload_id_str;
  final double average_speed;
  final double max_speed;
  final bool has_heartrate;
  final bool heartrate_opt_out;
  final bool display_hide_heartrate_option;
  final double elev_high;
  final double elev_low;
  final int pr_count;
  final int total_photo_count;
  final bool has_kudoed;
  final String description;
  @override
  final double calories;
  final double perceived_exertion;
  final bool prefer_perceived_exertion;
  final List<SegmentEffortsModel> segment_efforts;
  final List<SplitsMetricModel> splits_metric;
  final List<SplitsMetricModel> splits_standard;
  final List<LapsModel> laps;
  final List<BestEffortsModel> best_efforts;
  @override
  final PhotosModel photos;
  final String device_name;
  final String embed_token;
  final SimilarActivitiesModel similar_activities;
  final List<int> available_zones;

  const DetailedActivityModel({
    @required this.resource_state,
    @required this.athlete,
    @required this.name,
    @required this.distance,
    @required this.moving_time,
    @required this.elapsed_time,
    @required this.total_elevation_gain,
    @required this.type,
    @required this.workout_type,
    @required this.id,
    @required this.upload_id,
    @required this.start_date,
    @required this.start_date_local,
    @required this.timezone,
    @required this.utc_offset,
    @required this.start_latlng,
    @required this.end_latlng,
    @required this.start_latitude,
    @required this.start_longitude,
    @required this.achievement_count,
    @required this.kudos_count,
    @required this.comment_count,
    @required this.athlete_count,
    @required this.photo_count,
    @required this.trainer,
    @required this.commute,
    @required this.manual,
    @required this.private,
    @required this.visibility,
    @required this.flagged,
    @required this.from_accepted_tag,
    @required this.upload_id_str,
    @required this.average_speed,
    @required this.max_speed,
    @required this.has_heartrate,
    @required this.heartrate_opt_out,
    @required this.display_hide_heartrate_option,
    @required this.elev_high,
    @required this.elev_low,
    @required this.pr_count,
    @required this.total_photo_count,
    @required this.has_kudoed,
    @required this.calories,
    @required this.perceived_exertion,
    @required this.prefer_perceived_exertion,
    @required this.segment_efforts,
    @required this.splits_metric,
    @required this.splits_standard,
    @required this.laps,
    @required this.best_efforts,
    @required this.photos,
    @required this.device_name,
    @required this.embed_token,
    @required this.similar_activities,
    @required this.available_zones,
    this.external_id,
    this.location_city,
    this.location_state,
    this.location_country,
    this.gear_id,
    this.description,
  });

  factory DetailedActivityModel.fromJson(Map<String, dynamic> json) =>
      _$DetailedActivityModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailedActivityModelToJson(this);

  @override
  int get achievementCount => achievement_count;

  @override
  int get athleteCount => athlete_count;

  @override
  IList<int> get availableZones => ilist(available_zones);

  @override
  double get averageSpeed => average_speed;

  @override
  IList<BestEfforts> get bestEfforts => ilist(best_efforts);

  @override
  int get commentCount => comment_count;

  @override
  String get deviceName => device_name;

  @override
  bool get displayHideHeartrateOption => display_hide_heartrate_option;

  @override
  int get elapsedTime => elapsed_time;

  @override
  double get elevHigh => elev_high;

  @override
  double get elevLow => elev_low;

  @override
  String get embedToken => embed_token;

  @override
  List2<double> get endLatlng => List2(end_latlng);

  @override
  Option<String> get externalIdOption => optionOf(external_id);

  @override
  bool get fromAcceptedTag => from_accepted_tag;

  @override
  Option<String> get gearIdOption => optionOf(gear_id);

  @override
  bool get hasHeartrate => has_heartrate;

  @override
  bool get hasKudoed => has_kudoed;

  @override
  bool get heartrateOptOut => heartrate_opt_out;

  @override
  int get kudosCount => kudos_count;

  @override
  IList<Laps> get lapsList => ilist(laps);

  @override
  Option<String> get locationCityOption => optionOf(location_city);

  @override
  Option<String> get locationCountryOption => optionOf(location_country);

  @override
  Option<String> get locationStateOption => optionOf(location_state);

  @override
  double get maxSpeed => max_speed;

  @override
  int get movingTime => moving_time;

  @override
  double get perceivedExertion => perceived_exertion;

  @override
  int get photoCount => photo_count;

  @override
  int get prCount => pr_count;

  @override
  bool get preferPerceivedExertion => prefer_perceived_exertion;

  @override
  int get resourceState => resource_state;

  @override
  IList<SegmentEfforts> get segmentEfforts => ilist(segment_efforts);

  @override
  SimilarActivities get similarActivities => similar_activities;

  @override
  IList<SplitsMetric> get splitsMetric => ilist(splits_metric);

  @override
  IList<SplitsMetric> get splitsStandard => ilist(splits_standard);

  @override
  DateTime get startDate => start_date;

  @override
  DateTime get startDateLocal => start_date_local;

  @override
  double get startLatitude => start_latitude;

  @override
  List2<double> get startLatlng => List2(start_latlng);

  @override
  double get startLongitude => start_longitude;

  @override
  double get totalElevationGain => total_elevation_gain;

  @override
  int get totalPhotoCount => total_photo_count;

  @override
  int get uploadId => upload_id;

  @override
  String get uploadIdStr => upload_id_str;

  @override
  double get utcOffset => utc_offset;

  @override
  int get workoutType => workout_type;

  @override
  Option<String> get descriptionOption => optionOf(description);
}
