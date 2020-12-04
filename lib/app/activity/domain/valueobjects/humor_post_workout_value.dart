import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class HumorPostWorkoutValue extends RangeValue {
  factory HumorPostWorkoutValue(int value) =>
      HumorPostWorkoutValue._(RangeValue.factory(value));
  const HumorPostWorkoutValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'Bad',
        2: 'Not good',
        3: 'Standard',
        4: 'Good',
        5: 'Great',
      };
}
