import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class LastMealValue extends RangeValue {
  factory LastMealValue(int value) =>
      LastMealValue._(RangeValue.factory(value, max: 7));
  const LastMealValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'Fasting',
        2: '5 hours before',
        3: '4 hours before',
        4: '3 hours before',
        5: '2 hours before',
        6: '1 hour before',
        7: 'Right before',
      };
}
