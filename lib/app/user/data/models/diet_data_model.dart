import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/diet_value.dart';

part 'diet_data_model.g.dart';

@JsonSerializable()
class DietDataModel extends DietData {
  final bool eatNight;
  final bool eatBreakfast;
  final bool eatMidMorning;
  final bool eatLunch;
  final bool eatMidAfternoon;
  final bool eatDinner;
  final bool eatAfterDinner;

  const DietDataModel({
    this.eatNight,
    this.eatBreakfast,
    this.eatMidMorning,
    this.eatLunch,
    this.eatMidAfternoon,
    this.eatDinner,
    this.eatAfterDinner,
  });

  factory DietDataModel.fromJson(Map<String, dynamic> json) =>
      _$DietDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$DietDataModelToJson(this);

  @override
  DietValue get afterDinner => DietValue(eatAfterDinner);

  @override
  DietValue get breakfast => DietValue(eatBreakfast);

  @override
  DietValue get dinner => DietValue(eatDinner);

  @override
  DietValue get lunch => DietValue(eatLunch);

  @override
  DietValue get midAfternoon => DietValue(eatMidAfternoon);

  @override
  DietValue get midMorning => DietValue(eatMidMorning);

  @override
  DietValue get night => DietValue(eatNight);

  @override
  DietDataModel get toModel => DietDataModel(
        eatNight: eatNight,
        eatBreakfast: eatBreakfast,
        eatMidMorning: eatMidMorning,
        eatLunch: eatLunch,
        eatMidAfternoon: eatMidAfternoon,
        eatDinner: eatDinner,
        eatAfterDinner: eatAfterDinner,
      );

  @override
  DietData copyWith({
    bool eatNightNew,
    bool eatBreakfastNew,
    bool eatMidMorningNew,
    bool eatLunchNew,
    bool eatMidAfternoonNew,
    bool eatDinnerNew,
    bool eatAfterDinnerNew,
  }) =>
      DietDataModel(
        eatNight: eatNightNew ?? eatNight,
        eatBreakfast: eatBreakfastNew ?? eatBreakfast,
        eatMidMorning: eatMidMorningNew ?? eatMidMorning,
        eatLunch: eatLunchNew ?? eatLunch,
        eatMidAfternoon: eatMidAfternoonNew ?? eatMidAfternoon,
        eatDinner: eatDinnerNew ?? eatDinner,
        eatAfterDinner: eatAfterDinnerNew ?? eatAfterDinner,
      );
}
