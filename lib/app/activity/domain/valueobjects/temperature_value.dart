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
        3: 'Pleasant',
        4: 'Cold',
        5: 'Freezing',
      };

  @override
  double get points => valueOption.fold(
        () => 0,
        (a) {
          switch (a) {
            case 1:
            case 5:
              return 0.25;
            case 2:
            case 4:
              return 0.5;
            case 3:
              return 1;
            default:
              return 0;
          }
        },
      );
}
