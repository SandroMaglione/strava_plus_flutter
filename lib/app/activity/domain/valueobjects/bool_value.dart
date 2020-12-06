import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/selection_value.dart';

/// Specify value in range [min]-[max]
abstract class BoolValue extends SelectionValue<bool> {
  @override
  double get points => valueOption.fold(() => 0, (a) => a ? 1 : 0);

  /// Get current message selected based on [valueOption]
  @override
  String get label => valueOption.fold(() => '---', (a) => messages[a]);

  /// Init object given value
  static Option<bool> factory(bool value) => option(value != null, value);

  const BoolValue(Option<bool> value) : super(value);

  @override
  List<Object> get props => [valueOption];
}
