import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/experience_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/humor_post_workout_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/is_especially_bad_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/is_special_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/is_supervised_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/last_meal_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/mood_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/motivation_pre_workout_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/rpe_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/temperature_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/with_stretching_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/workout_scope_value.dart';

part 'extra_stats_model.g.dart';

@JsonSerializable()
class ExtraStatsModel extends ExtraStats {
  final int rpeValue;
  final int moodValue;
  final int experienceValue;
  final int temperatureValue;
  final int humorPostWorkoutValue;
  final int motivationPreWorkoutValue;
  final int lastMealValue;
  final int workoutScopeValue;
  final bool withStretchingValue;
  final bool isSpecialValue;
  final bool isSupervisedValue;
  final bool isEspeciallyBadValue;

  const ExtraStatsModel({
    this.rpeValue,
    this.moodValue,
    this.experienceValue,
    this.temperatureValue,
    this.humorPostWorkoutValue,
    this.motivationPreWorkoutValue,
    this.lastMealValue,
    this.workoutScopeValue,
    this.withStretchingValue,
    this.isSpecialValue,
    this.isSupervisedValue,
    this.isEspeciallyBadValue,
  });

  factory ExtraStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ExtraStatsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ExtraStatsModelToJson(this);

  @override
  ExtraStatsModel get toModel => ExtraStatsModel(
        rpeValue: rpeValue,
        moodValue: moodValue,
        experienceValue: experienceValue,
        temperatureValue: temperatureValue,
        humorPostWorkoutValue: humorPostWorkoutValue,
        motivationPreWorkoutValue: motivationPreWorkoutValue,
        lastMealValue: lastMealValue,
        workoutScopeValue: workoutScopeValue,
        withStretchingValue: withStretchingValue,
        isSpecialValue: isSpecialValue,
        isSupervisedValue: isSupervisedValue,
        isEspeciallyBadValue: isEspeciallyBadValue,
      );

  @override
  MoodValue get mood => MoodValue(moodValue);

  @override
  RpeValue get rpe => RpeValue(rpeValue);

  @override
  ExperienceValue get experience => ExperienceValue(experienceValue);

  @override
  HumorPostWorkoutValue get humorPostWorkout =>
      HumorPostWorkoutValue(humorPostWorkoutValue);

  @override
  LastMealValue get lastMeal => LastMealValue(lastMealValue);

  @override
  MotivationPreWorkoutValue get motivationPreWorkout =>
      MotivationPreWorkoutValue(motivationPreWorkoutValue);

  @override
  TemperatureValue get temperature => TemperatureValue(temperatureValue);

  @override
  IsEspeciallyBadValue get isEspeciallyBad =>
      IsEspeciallyBadValue(isEspeciallyBadValue);

  @override
  IsSpecialValue get isSpecial => IsSpecialValue(isSpecialValue);

  @override
  IsSupervisedValue get isSupervised => IsSupervisedValue(isSupervisedValue);

  @override
  WithStretchingValue get withStretching =>
      WithStretchingValue(withStretchingValue);

  @override
  WorkoutScopeValue get workoutScope => WorkoutScopeValue(workoutScopeValue);

  @override
  ExtraStats copyWith({
    int rpeValueNew,
    int moodValueNew,
    int experienceValueNew,
    int temperatureValueNew,
    int humorPostWorkoutValueNew,
    int motivationPreWorkoutValueNew,
    int lastMealValueNew,
    int workoutScopeValueNew,
    bool withStretchingValueNew,
    bool isSpecialValueNew,
    bool isSupervisedValueNew,
    bool isEspeciallyBadValueNew,
  }) =>
      ExtraStatsModel(
        rpeValue: rpeValueNew ?? rpeValue,
        moodValue: moodValueNew ?? moodValue,
        experienceValue: experienceValueNew ?? experienceValue,
        temperatureValue: temperatureValueNew ?? temperatureValue,
        humorPostWorkoutValue:
            humorPostWorkoutValueNew ?? humorPostWorkoutValue,
        motivationPreWorkoutValue:
            motivationPreWorkoutValueNew ?? motivationPreWorkoutValue,
        lastMealValue: lastMealValueNew ?? lastMealValue,
        workoutScopeValue: workoutScopeValueNew ?? workoutScopeValue,
        withStretchingValue: withStretchingValueNew ?? withStretchingValue,
        isSpecialValue: isSpecialValueNew ?? isSpecialValue,
        isSupervisedValue: isSupervisedValueNew ?? isSupervisedValue,
        isEspeciallyBadValue: isEspeciallyBadValueNew ?? isEspeciallyBadValue,
      );
}
