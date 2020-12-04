import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/bool_value.dart';

class IsSpecialValue extends BoolValue {
  factory IsSpecialValue(bool value) =>
      IsSpecialValue._(BoolValue.factory(value));
  const IsSpecialValue._(Option<bool> value) : super(value);

  @override
  Map<bool, String> get messages => {
        true: 'Special/Unique',
        false: 'Standard/Usual',
      };
}
