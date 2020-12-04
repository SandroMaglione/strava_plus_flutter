import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class MotivationPreWorkoutValue extends RangeValue {
  factory MotivationPreWorkoutValue(int value) =>
      MotivationPreWorkoutValue._(RangeValue.factory(value));
  const MotivationPreWorkoutValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'Really low',
        2: 'Low',
        3: 'Normal',
        4: 'High',
        5: 'Really high',
      };
}
