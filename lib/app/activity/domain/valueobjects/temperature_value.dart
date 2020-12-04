import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class TemperatureValue extends RangeValue {
  factory TemperatureValue(int value) =>
      TemperatureValue._(RangeValue.factory(value));
  const TemperatureValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'Hot',
        2: 'Warm',
        3: 'Standard',
        4: 'Cold',
        5: 'Freezing',
      };
}
