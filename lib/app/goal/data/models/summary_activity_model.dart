import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/goal/data/models/meta_athlete_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/strava/summary_activity.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

part 'summary_activity_model.g.dart';

@JsonSerializable()
class SummaryActivityModel extends SummaryActivity {
  @override
  final int id;
  final String external_id;
  final int upload_id;
  @override
  final MetaAthleteModel athlete;
  @override
  final String name;
  @override
  final double distance;
  final int moving_time;
  final int elapsed_time;
  final double total_elevation_gain;
  final double elev_high;
  final double elev_low;
  @override
  final ActivityType type;
  final DateTime start_date;
  final DateTime start_date_local;
  @override
  final String timezone;
  final int achievement_count;
  final int kudos_count;
  final int comment_count;
  final int athlete_count;
  final int photo_count;
  final int total_photo_count;
  @override
  final bool trainer;
  @override
  final bool commute;
  @override
  final bool manual;
  @override
  final bool private;
  @override
  final bool flagged;
  final int workout_type;
  final String upload_id_str;
  final double average_speed;
  final double max_speed;
  final bool has_kudoed;
  final String gear_id;
  @override
  final double kilojoules;
  final double average_watts;
  final bool device_watts;
  final int max_watts;
  final int weighted_average_watts;

  final List<double> start_latlng;
  final List<double> end_latlng;

  const SummaryActivityModel({
    @required this.id,
    @required this.external_id,
    @required this.upload_id,
    @required this.athlete,
    @required this.name,
    @required this.distance,
    @required this.moving_time,
    @required this.elapsed_time,
    @required this.total_elevation_gain,
    @required this.elev_high,
    @required this.elev_low,
    @required this.type,
    @required this.start_date,
    @required this.start_date_local,
    @required this.timezone,
    @required this.total_photo_count,
    @required this.achievement_count,
    @required this.kudos_count,
    @required this.comment_count,
    @required this.athlete_count,
    @required this.photo_count,
    @required this.trainer,
    @required this.commute,
    @required this.manual,
    @required this.private,
    @required this.flagged,
    @required this.workout_type,
    @required this.upload_id_str,
    @required this.average_speed,
    @required this.max_speed,
    @required this.has_kudoed,
    @required this.gear_id,
    @required this.kilojoules,
    @required this.average_watts,
    @required this.device_watts,
    @required this.max_watts,
    @required this.weighted_average_watts,
    @required this.start_latlng,
    @required this.end_latlng,
  });

  factory SummaryActivityModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryActivityModelFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryActivityModelToJson(this);

  @override
  int get achievementCount => achievement_count;

  @override
  int get athleteCount => athlete_count;

  @override
  double get averageSpeed => average_speed;

  @override
  double get averageWatts => average_watts;

  @override
  int get commentCount => comment_count;

  @override
  bool get deviceWatts => device_watts;

  @override
  int get elapsedTime => elapsed_time;

  @override
  double get elevHigh => elev_high;

  @override
  double get elevLow => elev_low;

  @override
  Tuple2<double, double> get endLatlng => tuple2(end_latlng[0], end_latlng[1]);

  @override
  String get externalId => external_id;

  @override
  String get gearId => gear_id;

  @override
  bool get hasKudoed => has_kudoed;

  @override
  int get kudosCount => kudos_count;

  @override
  double get maxSpeed => max_speed;

  @override
  int get maxWatts => max_watts;

  @override
  int get movingTime => moving_time;

  @override
  int get photoCount => photo_count;

  @override
  DateTime get startDate => start_date;

  @override
  DateTime get startDateLocal => start_date_local;

  @override
  Tuple2<double, double> get startLatlng =>
      tuple2(start_latlng[0], start_latlng[1]);

  @override
  double get totalElevationGain => total_elevation_gain;

  @override
  int get uploadId => upload_id;

  @override
  String get uploadIdStr => upload_id_str;

  @override
  int get weightedAverageWatts => weighted_average_watts;

  @override
  int get workoutType => workout_type;

  @override
  int get totalPhotoCount => total_photo_count;
}
