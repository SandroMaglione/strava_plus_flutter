import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/athlete/data/models/meta_athlete_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

part 'summary_activity_model.g.dart';

@JsonSerializable()
class SummaryActivityModel extends SummaryActivity {
  @override
  final int id;
  final String external_id;
  final num upload_id;
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
  final double kilojoules;
  final double average_watts;
  final bool device_watts;
  final int max_watts;
  final int weighted_average_watts;

  final List<double> start_latlng;
  final List<double> end_latlng;
  final bool display_hide_heartrate_option;
  final bool from_accepted_tag;
  final bool has_heartrate;
  final bool heartrate_opt_out;
  final String location_city;
  final String location_country;
  final String location_state;
  final int pr_count;
  final int resource_state;
  final double utc_offset;

  @override
  final String visibility;

  const SummaryActivityModel({
    @required this.id,
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
    @required this.start_latlng,
    @required this.end_latlng,
    @required this.display_hide_heartrate_option,
    @required this.from_accepted_tag,
    @required this.has_heartrate,
    @required this.heartrate_opt_out,
    @required this.pr_count,
    @required this.resource_state,
    @required this.utc_offset,
    @required this.visibility,
    this.gear_id,
    this.external_id,
    this.location_city,
    this.location_country,
    this.location_state,
    this.kilojoules,
    this.average_watts,
    this.device_watts,
    this.max_watts,
    this.weighted_average_watts,
  });

  factory SummaryActivityModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryActivityModelFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryActivityModelToJson(this);

  @override
  SummaryActivityModel get toModel => SummaryActivityModel(
        id: id,
        upload_id: upload_id,
        athlete: athlete,
        name: name,
        distance: distance,
        moving_time: moving_time,
        elapsed_time: elapsed_time,
        total_elevation_gain: total_elevation_gain,
        elev_high: elev_high,
        elev_low: elev_low,
        type: type,
        start_date: start_date,
        start_date_local: start_date_local,
        timezone: timezone,
        total_photo_count: total_photo_count,
        achievement_count: achievement_count,
        kudos_count: kudos_count,
        comment_count: comment_count,
        athlete_count: athlete_count,
        photo_count: photo_count,
        trainer: trainer,
        commute: commute,
        manual: manual,
        private: private,
        flagged: flagged,
        workout_type: workout_type,
        upload_id_str: upload_id_str,
        average_speed: average_speed,
        max_speed: max_speed,
        has_kudoed: has_kudoed,
        start_latlng: start_latlng,
        end_latlng: end_latlng,
        display_hide_heartrate_option: display_hide_heartrate_option,
        from_accepted_tag: from_accepted_tag,
        has_heartrate: has_heartrate,
        heartrate_opt_out: heartrate_opt_out,
        pr_count: pr_count,
        resource_state: resource_state,
        utc_offset: utc_offset,
        visibility: visibility,
      );

  @override
  int get achievementCount => achievement_count;

  @override
  int get athleteCount => athlete_count;

  @override
  double get averageSpeed => average_speed;

  @override
  Option<double> get averageWattsOption => optionOf(average_watts);

  @override
  int get commentCount => comment_count;

  @override
  Option<bool> get deviceWattsOption => optionOf(device_watts);

  @override
  int get elapsedTime => elapsed_time;

  @override
  double get elevHigh => elev_high;

  @override
  double get elevLow => elev_low;

  @override
  Tuple2<double, double> get endLatlng => tuple2(end_latlng[0], end_latlng[1]);

  @override
  Option<String> get externalIdOption => optionOf(external_id);

  @override
  Option<String> get gearIdOption => optionOf(gear_id);

  @override
  bool get hasKudoed => has_kudoed;

  @override
  int get kudosCount => kudos_count;

  @override
  double get maxSpeed => max_speed;

  @override
  Option<int> get maxWattsOption => optionOf(max_watts);

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
  num get uploadId => upload_id;

  @override
  String get uploadIdStr => upload_id_str;

  @override
  int get weightedAverageWatts => weighted_average_watts;

  @override
  int get workoutType => workout_type;

  @override
  int get totalPhotoCount => total_photo_count;

  @override
  bool get displayHideHeartrateOption => display_hide_heartrate_option;

  @override
  bool get fromAcceptedTag => from_accepted_tag;

  @override
  bool get hasHeartrate => has_heartrate;

  @override
  bool get heartrateOptOut => heartrate_opt_out;

  @override
  Option<String> get locationCityOption => optionOf(location_city);

  @override
  Option<String> get locationCountryOption => optionOf(location_country);

  @override
  Option<String> get locationStateOption => optionOf(location_state);

  @override
  int get prCount => pr_count;

  @override
  int get resourceState => resource_state;

  @override
  double get utcOffset => utc_offset;

  @override
  Option<double> get kilojoulesOption => optionOf(kilojoules);
}
