import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/experience_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/humor_post_workout_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/last_meal_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/mood_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/motivation_pre_workout_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/rpe_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/temperature_value.dart';
import 'package:mobile_polimi_project/core/enums/workout_scope.dart';

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
  final bool withStretchingValue;
  final bool isSpecialValue;
  final bool isSupervisedValue;
  final bool isEspeciallyBadValue;
  final WorkoutScope workoutScopeValue;

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
  Option<bool> get isEspeciallyBad => optionOf(isEspeciallyBadValue);

  @override
  Option<bool> get isSpecial => optionOf(isSpecialValue);

  @override
  Option<bool> get isSupervised => optionOf(isSupervisedValue);

  @override
  Option<bool> get withStretching => optionOf(withStretchingValue);

  @override
  Option<WorkoutScope> get workoutScope => optionOf(workoutScopeValue);

  @override
  ExtraStats copyWith({
    int rpeValueNew,
    int moodValueNew,
    int experienceValueNew,
    int temperatureValueNew,
    int humorPostWorkoutValueNew,
    int motivationPreWorkoutValueNew,
    int lastMealValueNew,
    bool withStretchingValueNew,
    bool isSpecialValueNew,
    bool isSupervisedValueNew,
    bool isEspeciallyBadValueNew,
    WorkoutScope workoutScopeValueNew,
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
        withStretchingValue: withStretchingValueNew ?? withStretchingValue,
        isSpecialValue: isSpecialValueNew ?? isSpecialValue,
        isSupervisedValue: isSupervisedValueNew ?? isSupervisedValue,
        isEspeciallyBadValue: isEspeciallyBadValueNew ?? isEspeciallyBadValue,
        workoutScopeValue: workoutScopeValueNew ?? workoutScopeValue,
      );
}
