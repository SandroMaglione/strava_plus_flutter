import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class RpeValue extends RangeValue {
  factory RpeValue(int value) => RpeValue._(RangeValue.factory(value, max: 11));
  const RpeValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'No extertion',
        2: 'Idle',
        3: 'Relax',
        4: 'Really easy',
        5: 'Easy',
        6: 'Standard',
        7: 'Difficult',
        8: 'Hard',
        9: 'Really hard',
        10: 'Extreme',
        11: 'Impossible',
      };
}
