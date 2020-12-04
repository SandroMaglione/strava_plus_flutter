import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/experience_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/humor_post_workout_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/last_meal_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/mood_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/motivation_pre_workout_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/rpe_value.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/temperature_value.dart';
import 'package:mobile_polimi_project/core/enums/workout_scope.dart';

abstract class ExtraStats extends Equatable {
  const ExtraStats();

  RpeValue get rpe;
  MoodValue get mood;
  ExperienceValue get experience;
  TemperatureValue get temperature;
  HumorPostWorkoutValue get humorPostWorkout;
  MotivationPreWorkoutValue get motivationPreWorkout;
  LastMealValue get lastMeal;
  Option<WorkoutScope> get workoutScope;
  Option<bool> get withStretching;
  Option<bool> get isSpecial;
  Option<bool> get isSupervised;
  Option<bool> get isEspeciallyBad;

  static ExtraStatsModel get empty => const ExtraStatsModel();
  ExtraStatsModel get toModel;
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
  });

  @override
  List<Object> get props => [
        rpe,
        mood,
        experience,
        temperature,
        humorPostWorkout,
        motivationPreWorkout,
        lastMeal,
        workoutScope,
        withStretching,
        isSpecial,
        isSupervised,
        isEspeciallyBad,
      ];
}
