import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class WorkoutScopeValue extends RangeValue {
  factory WorkoutScopeValue(int value) =>
      WorkoutScopeValue._(RangeValue.factory(value));
  const WorkoutScopeValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'Recovery',
        2: 'Powerlifting',
        3: 'Strenght',
        4: 'High intensity',
        5: 'Endurance',
      };
}
