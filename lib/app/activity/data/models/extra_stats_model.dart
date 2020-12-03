import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/mood_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/rpe_value.dart';

part 'extra_stats_model.g.dart';

@JsonSerializable()
class ExtraStatsModel extends ExtraStats {
  final int rpeValue;
  final int moodValue;

  const ExtraStatsModel({
    @required this.rpeValue,
    @required this.moodValue,
  });

  factory ExtraStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ExtraStatsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ExtraStatsModelToJson(this);

  @override
  ExtraStatsModel get toModel => ExtraStatsModel(
        rpeValue: rpeValue,
        moodValue: moodValue,
      );

  @override
  MoodValue get mood => MoodValue(moodValue);

  @override
  RpeValue get rpe => RpeValue(rpeValue);
}
