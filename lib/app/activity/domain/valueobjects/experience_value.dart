import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';

class ExperienceValue extends RangeValue {
  factory ExperienceValue(int value) =>
      ExperienceValue._(RangeValue.factory(value));
  const ExperienceValue._(Option<int> value) : super(value);

  @override
  Map<int, String> get messages => {
        1: 'Bad',
        2: 'Not good',
        3: 'Normal',
        4: 'Great',
        5: 'Awesome',
      };
}
