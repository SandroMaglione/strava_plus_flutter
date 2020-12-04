import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/bool_value.dart';

class IsSupervisedValue extends BoolValue {
  factory IsSupervisedValue(bool value) =>
      IsSupervisedValue._(BoolValue.factory(value));
  const IsSupervisedValue._(Option<bool> value) : super(value);

  @override
  Map<bool, String> get messages => {
        true: 'With trainer/coach',
        false: 'Alone',
      };
}
