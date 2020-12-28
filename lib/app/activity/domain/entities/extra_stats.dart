import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
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

abstract class ExtraStats extends Equatable {
  const ExtraStats();

  RpeValue get rpe;
  MoodValue get mood;
  ExperienceValue get experience;
  TemperatureValue get temperature;
  HumorPostWorkoutValue get humorPostWorkout;
  MotivationPreWorkoutValue get motivationPreWorkout;
  LastMealValue get lastMeal;
  WorkoutScopeValue get workoutScope;
  WithStretchingValue get withStretching;
  IsSpecialValue get isSpecial;
  IsSupervisedValue get isSupervised;
  IsEspeciallyBadValue get isEspeciallyBad;

  /// Number of total maximum points
  ///
  /// [workoutScope] not included!
  double get maxTotal => 11.0;

  /// Sum of points from all the choices
  double get points => [
        rpe.points,
        mood.points,
        experience.points,
        temperature.points,
        humorPostWorkout.points,
        motivationPreWorkout.points,
        lastMeal.points,
        withStretching.points,
        isSpecial.points,
        isSupervised.points,
        isEspeciallyBad.points,
      ].fold(0, (prev, e) => prev + e);

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
    int workoutScopeValueNew,
    bool withStretchingValueNew,
    bool isSpecialValueNew,
    bool isSupervisedValueNew,
    bool isEspeciallyBadValueNew,
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
