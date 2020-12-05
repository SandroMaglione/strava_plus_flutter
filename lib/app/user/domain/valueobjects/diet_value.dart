import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/bool_value.dart';

class DietValue extends BoolValue {
  factory DietValue(bool value) => DietValue._(BoolValue.factory(value));
  const DietValue._(Option<bool> value) : super(value);

  @override
  Map<bool, String> get messages => {
        true: 'Yes',
        false: 'No',
      };
}
