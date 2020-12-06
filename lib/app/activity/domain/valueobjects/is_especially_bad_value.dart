import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/bool_value.dart';

class IsEspeciallyBadValue extends BoolValue {
  factory IsEspeciallyBadValue(bool value) =>
      IsEspeciallyBadValue._(BoolValue.factory(value));
  const IsEspeciallyBadValue._(Option<bool> value) : super(value);

  @override
  Map<bool, String> get messages => {
        true: 'Bad workout experience',
        false: 'Standard',
      };

  @override
  double get points => valueOption.fold(() => 0, (a) => a ? 0 : 1);
}
