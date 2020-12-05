import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/user/data/models/diet_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/diet_value.dart';

abstract class DietData extends Equatable {
  const DietData();

  DietValue get night;
  DietValue get breakfast;
  DietValue get midMorning;
  DietValue get lunch;
  DietValue get midAfternoon;
  DietValue get dinner;
  DietValue get afterDinner;

  DietDataModel get toModel;
  DietData copyWith({
    bool eatNightNew,
    bool eatBreakfastNew,
    bool eatMidMorningNew,
    bool eatLunchNew,
    bool eatMidAfternoonNew,
    bool eatDinnerNew,
    bool eatAfterDinnerNew,
  });
  int get meals => ilist([
        night.valueOption.getOrElse(() => false),
        breakfast.valueOption.getOrElse(() => false),
        midMorning.valueOption.getOrElse(() => false),
        lunch.valueOption.getOrElse(() => false),
        midAfternoon.valueOption.getOrElse(() => false),
        dinner.valueOption.getOrElse(() => false),
        afterDinner.valueOption.getOrElse(() => false),
      ]).foldLeft(
        0,
        (prev, a) => a ? prev + 1 : prev,
      );

  @override
  List<Object> get props => [
        night,
        breakfast,
        midMorning,
        lunch,
        midAfternoon,
        dinner,
        afterDinner,
      ];
}
