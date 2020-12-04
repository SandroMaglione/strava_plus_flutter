import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/bool_value.dart';

class WithStretchingValue extends BoolValue {
  factory WithStretchingValue(bool value) =>
      WithStretchingValue._(BoolValue.factory(value));
  const WithStretchingValue._(Option<bool> value) : super(value);

  @override
  Map<bool, String> get messages => {
        true: 'Stretching done',
        false: 'No stretching',
      };
}
