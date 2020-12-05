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
