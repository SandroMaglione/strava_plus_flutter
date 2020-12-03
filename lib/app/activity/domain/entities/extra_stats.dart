import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/mood_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/rpe_value.dart';

abstract class ExtraStats extends Equatable {
  const ExtraStats();

  RpeValue get rpe;
  MoodValue get mood;

  static ExtraStatsModel get empty =>
      const ExtraStatsModel(rpeValue: -1, moodValue: -1);

  ExtraStatsModel get toModel;

  @override
  List<Object> get props => [
        rpe,
        mood,
      ];
}
