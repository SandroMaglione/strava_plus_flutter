import 'package:mobile_polimi_project/app/activity/data/models/best_efforts_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/detailed_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/laps_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/photos_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/similar_activities_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/splits_metric_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/trend_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/meta_athlete_model.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

abstract class Shared {
  static const metaAthleteModel = MetaAthleteModel(id: 44062778);
  static const activityModel = MetaAthleteModel(id: 2778055056);
  static const trendModel = TrendModel(
    speeds: [3.282710280373832],
    current_activity_index: 0,
    min_speed: 3.282710280373832,
    mid_speed: 3.282710280373832,
    max_speed: 3.282710280373832,
    direction: 0,
  );
  static const trendModelCopy = TrendModel(
    speeds: [3.282710280373832],
    current_activity_index: 0,
    min_speed: 3.282710280373832,
    mid_speed: 3.282710280373832,
    max_speed: 3.282710280373832,
    direction: 0,
  );
  static const photosModel = PhotosModel(primary: null, count: 0);
  static const photosModelCopy = PhotosModel(primary: null, count: 0);
  static const splitsMetricModel = SplitsMetricModel(
    distance: 1000.6,
    elapsed_time: 314,
    elevation_difference: -5.5,
    moving_time: 314,
    split: 1,
    average_speed: 3.19,
    average_grade_adjusted_speed: 3.16,
    pace_zone: 0,
  );
  static const splitsMetricModelCopy = SplitsMetricModel(
    distance: 1000.6,
    elapsed_time: 314,
    elevation_difference: -5.5,
    moving_time: 314,
    split: 1,
    average_speed: 3.19,
    average_grade_adjusted_speed: 3.16,
    pace_zone: 0,
  );
  static const splitsStandardModel = SplitsMetricModel(
    distance: null,
    elapsed_time: null,
    elevation_difference: null,
    moving_time: null,
    split: null,
    average_speed: null,
    average_grade_adjusted_speed: null,
    pace_zone: null,
  );
  static const similarActivitiesModel = SimilarActivitiesModel(
    effort_count: 1,
    average_speed: 3.282710280373832,
    min_average_speed: 3.282710280373832,
    mid_average_speed: 3.282710280373832,
    max_average_speed: 3.282710280373832,
    pr_rank: null,
    frequency_milestone: null,
    trend: trendModel,
    resource_state: 2,
  );
  static const similarActivitiesModelCopy = SimilarActivitiesModel(
    effort_count: 1,
    average_speed: 3.282710280373832,
    min_average_speed: 3.282710280373832,
    mid_average_speed: 3.282710280373832,
    max_average_speed: 3.282710280373832,
    pr_rank: null,
    frequency_milestone: null,
    trend: trendModel,
    resource_state: 2,
  );
  static final bestEffortsModel = BestEffortsModel(
    id: 5877736223,
    resource_state: 2,
    name: "400m",
    activity: activityModel,
    athlete: metaAthleteModel,
    elapsed_time: 113,
    moving_time: 114,
    start_date: DateTime(2019, 10, 10, 16, 06, 46),
    start_date_local: DateTime(2019, 10, 10, 18, 06, 46),
    distance: 400,
    start_index: 635,
    end_index: 749,
    pr_rank: null,
    achievements: [],
  );
  static final bestEffortsModelCopy = BestEffortsModel(
    id: 5877736223,
    resource_state: 123,
    name: "600m",
    activity: activityModel,
    athlete: metaAthleteModel,
    elapsed_time: 1133,
    moving_time: 11124,
    start_date: DateTime(2019, 10, 10, 16, 06, 46),
    start_date_local: DateTime(2020, 10, 10, 18, 06, 46),
    distance: 4002,
    start_index: 6135,
    end_index: 7492,
    pr_rank: null,
    achievements: [],
  );
  static final lapsModel = LapsModel(
    id: 9112691652,
    resource_state: 2,
    name: "Lap 1",
    activity: activityModel,
    athlete: metaAthleteModel,
    elapsed_time: 860,
    moving_time: 856,
    start_date: DateTime(2019, 10, 10, 15, 54, 52),
    start_date_local: DateTime(2019, 10, 10, 17, 54, 52),
    distance: 2810.0,
    start_index: 0,
    end_index: 772,
    total_elevation_gain: 33.0,
    average_speed: 3.28,
    max_speed: 4.4,
    lap_index: 1,
    split: 1,
    paceZone: 0,
  );
  static final lapsModelCopy = LapsModel(
    id: 9112691652,
    resource_state: 222,
    name: "Lap 1112",
    activity: activityModel,
    athlete: metaAthleteModel,
    elapsed_time: 86120,
    moving_time: 85226,
    start_date: DateTime(2020, 10, 10, 15, 54, 52),
    start_date_local: DateTime(2019, 11, 10, 17, 54, 52),
    distance: 2810.0,
    start_index: 0,
    end_index: 77322,
    total_elevation_gain: 33.0,
    average_speed: 3.28,
    max_speed: 4.4,
    lap_index: 11,
    split: 12,
    paceZone: 10,
  );
  static final summaryActivityModel = SummaryActivityModel(
    resource_state: 2,
    athlete: metaAthleteModel,
    name: "Afternoon Run",
    distance: 2810.0,
    moving_time: 856,
    elapsed_time: 860,
    total_elevation_gain: 31.6,
    type: ActivityType.Run,
    workout_type: 0,
    id: 2778055056,
    external_id: null,
    upload_id: 2943823984,
    start_date: DateTime(2019, 10, 10, 15, 54, 52),
    start_date_local: DateTime(2019, 10, 10, 17, 54, 52),
    timezone: "(GMT+01:00) Europe/Rome",
    utc_offset: 7200.0,
    start_latlng: [45.74461, 9.112155],
    end_latlng: [45.750954, 9.129207],
    location_city: null,
    location_state: null,
    location_country: null,
    // start_latitude: 45.74461,
    // start_longitude: 9.112155,
    achievement_count: 0,
    kudos_count: 1,
    comment_count: 0,
    athlete_count: 1,
    photo_count: 0,
    // map: {
    //   id: a2778055056,
    //   summary_polyline: ynevG}urv@DG?GDHDCHHf@t@JBBCv@uBZu@R]H]L[X[NYZg@^a@DOIc@BICYYmAGi@]qAq@qAKYe@u@U}@MOK[w@sAQe@e@e@k@u@[Ok@mAWU]o@]QQUQu@Si@GWOqACyAIy@@a@NYr@aAVc@p@_BZe@DMCO_@YeAi@q@QQKWK]Iw@WuA[U?w@GYGUOaAKq@Aw@Kk@GW?Q@c@Kw@GQIk@Iy@_@s@U]Go@Y_@Ii@Ee@Ik@Yc@K[CQCU?eBB]B]CcA?]I]As@FQF[TG?CSO[Ik@?c@Mo@Ca@?wBEa@BuBI{@@a@Gs@AaBBQPm@Hg@Rk@^s@V]d@g@RId@Gh@@bAQXBXCVD~ABPAd@DRDRGV?PCr@?DB,
    //   resource_state: 2
    // },
    trainer: false,
    commute: false,
    manual: false,
    private: false,
    visibility: "everyone",
    flagged: false,
    gear_id: null,
    from_accepted_tag: false,
    upload_id_str: "2943823984",
    average_speed: 3.283,
    max_speed: 4.4,
    has_heartrate: false,
    heartrate_opt_out: false,
    display_hide_heartrate_option: false,
    elev_high: 337.3,
    elev_low: 313.2,
    pr_count: 0,
    total_photo_count: 0,
    has_kudoed: false,
  );
  static final summaryActivityModelCopy = SummaryActivityModel(
    resource_state: 2,
    athlete: metaAthleteModel,
    name: "Afternoon Running",
    distance: 2810.0,
    moving_time: 856,
    elapsed_time: 860,
    total_elevation_gain: 31.6,
    type: ActivityType.BackcountrySki,
    workout_type: 1223,
    id: 2778055056,
    external_id: null,
    upload_id: 2943823984,
    start_date: DateTime(2029, 10, 10, 15, 54, 52),
    start_date_local: DateTime(2029, 10, 10, 17, 54, 52),
    timezone: "(GMT+01:00) Europe/Rome",
    utc_offset: 7100.0,
    start_latlng: [45.74461, 9.112155],
    end_latlng: [45.750954, 9.129207],
    location_city: null,
    location_state: null,
    location_country: null,
    // start_latitude: 45.74461,
    // start_longitude: 9.112155,
    achievement_count: 0,
    kudos_count: 1,
    comment_count: 0,
    athlete_count: 1,
    photo_count: 0,
    // map: {
    //   id: a2778055056,
    //   summary_polyline: ynevG}urv@DG?GDHDCHHf@t@JBBCv@uBZu@R]H]L[X[NYZg@^a@DOIc@BICYYmAGi@]qAq@qAKYe@u@U}@MOK[w@sAQe@e@e@k@u@[Ok@mAWU]o@]QQUQu@Si@GWOqACyAIy@@a@NYr@aAVc@p@_BZe@DMCO_@YeAi@q@QQKWK]Iw@WuA[U?w@GYGUOaAKq@Aw@Kk@GW?Q@c@Kw@GQIk@Iy@_@s@U]Go@Y_@Ii@Ee@Ik@Yc@K[CQCU?eBB]B]CcA?]I]As@FQF[TG?CSO[Ik@?c@Mo@Ca@?wBEa@BuBI{@@a@Gs@AaBBQPm@Hg@Rk@^s@V]d@g@RId@Gh@@bAQXBXCVD~ABPAd@DRDRGV?PCr@?DB,
    //   resource_state: 2
    // },
    trainer: false,
    commute: false,
    manual: false,
    private: false,
    visibility: "everyone",
    flagged: false,
    gear_id: null,
    from_accepted_tag: false,
    upload_id_str: "2943823984",
    average_speed: 3.283,
    max_speed: 4.4,
    has_heartrate: false,
    heartrate_opt_out: false,
    display_hide_heartrate_option: false,
    elev_high: 337.3,
    elev_low: 313.2,
    pr_count: 0,
    total_photo_count: 0,
    has_kudoed: false,
  );
  static final detailedActivityModel = DetailedActivityModel(
    resource_state: 3,
    athlete: metaAthleteModel,
    name: "Afternoon Run",
    distance: 2810.0,
    moving_time: 856,
    elapsed_time: 860,
    total_elevation_gain: 31.6,
    type: ActivityType.Run,
    workout_type: 0,
    id: 2778055056,
    external_id: null,
    upload_id: 2943823984,
    start_date: DateTime(2019, 10, 10, 15, 54, 52),
    start_date_local: DateTime(2019, 10, 10, 17, 54, 52),
    timezone: "(GMT+01:00) Europe/Rome",
    utc_offset: 7200.0,
    start_latlng: [45.74461, 9.112155],
    end_latlng: [45.750954, 9.129207],
    location_city: null,
    location_state: null,
    location_country: null,
    start_latitude: 45.74461,
    start_longitude: 9.112155,
    achievement_count: 0,
    kudos_count: 1,
    comment_count: 0,
    athlete_count: 1,
    photo_count: 0,
    trainer: false,
    commute: false,
    manual: false,
    private: false,
    visibility: "everyone",
    flagged: false,
    gear_id: null,
    from_accepted_tag: false,
    upload_id_str: "2943823984",
    average_speed: 3.283,
    max_speed: 4.4,
    has_heartrate: false,
    heartrate_opt_out: false,
    display_hide_heartrate_option: false,
    elev_high: 337.3,
    elev_low: 313.2,
    pr_count: 0,
    total_photo_count: 0,
    has_kudoed: false,
    description: null,
    calories: 0.0,
    perceived_exertion: 1.0,
    prefer_perceived_exertion: false,
    segment_efforts: [],
    splits_metric: [splitsMetricModel],
    splits_standard: [splitsStandardModel],
    laps: [lapsModel],
    best_efforts: [bestEffortsModel],
    photos: photosModel,
    device_name: "Strava Android App",
    embed_token: "c178212dcf8dd8719bec7e3482fedd56bfcb1cf6",
    similar_activities: similarActivitiesModel,
    available_zones: [],
  );
  static final detailedActivityModelCopy = DetailedActivityModel(
    resource_state: 3,
    athlete: metaAthleteModel,
    name: "Afternoon Running",
    distance: 2810.0,
    moving_time: 856,
    elapsed_time: 860,
    total_elevation_gain: 31.6,
    type: ActivityType.Run,
    workout_type: 0,
    id: 2778055056,
    external_id: null,
    upload_id: 29438223984,
    start_date: DateTime(2019, 10, 10, 15, 54, 52),
    start_date_local: DateTime(2019, 10, 10, 17, 54, 52),
    timezone: "(GMT+01:00) Europe/Rome",
    utc_offset: 7200.0,
    start_latlng: [425.74461, 9.112155],
    end_latlng: [45.750954, 9.129207],
    location_city: null,
    location_state: null,
    location_country: null,
    start_latitude: 45.74461,
    start_longitude: 9.112155,
    achievement_count: 0,
    kudos_count: 1,
    comment_count: 0,
    athlete_count: 1,
    photo_count: 0,
    trainer: false,
    commute: false,
    manual: true,
    private: false,
    visibility: "everyone",
    flagged: false,
    gear_id: null,
    from_accepted_tag: true,
    upload_id_str: "222943823984",
    average_speed: 31.283,
    max_speed: 42.4,
    has_heartrate: false,
    heartrate_opt_out: false,
    display_hide_heartrate_option: false,
    elev_high: 3237.3,
    elev_low: 3213.2,
    pr_count: 22,
    total_photo_count: 20,
    has_kudoed: false,
    description: null,
    calories: 12.0,
    perceived_exertion: 1.0,
    prefer_perceived_exertion: false,
    segment_efforts: [],
    splits_metric: [splitsMetricModel],
    splits_standard: [splitsStandardModel],
    laps: [lapsModel],
    best_efforts: [bestEffortsModel],
    photos: photosModel,
    device_name: "Strava Android",
    embed_token: "c178212dcf8dd871aasd9bec7e3482fedd56bfcb1cf6",
    similar_activities: similarActivitiesModel,
    available_zones: [],
  );
}
