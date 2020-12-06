import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/selection_value.dart';

/// Specify value in range [min]-[max]
abstract class RangeValue extends SelectionValue<int> {
  static const int _defaultMin = 1;
  static const int _defaultMax = 5;

  final int min = RangeValue._defaultMin;
  final int max = RangeValue._defaultMax;

  Option<String> _labelMessage(int value) => optionOf(messages[value]);

  @override
  double get points => valueOption.getOrElse(() => 0) / (max - min);

  /// Minimum value key in the [messages] map
  Iterable<int> get messagesKeys => messages.keys;

  /// Get current message selected based on [valueOption]
  @override
  String get label => valueOption.fold(
        () => '---', // Value still not selected by the user
        (a) => _labelMessage(a)
            .getOrElse(() => 'Undefined'), // Message not in the list!
      );

  /// Number of possible different values (based on [messages] defined)
  int get rangeValues => messages.length;

  /// Init object, given value, min (included), and max (included) limit
  static Option<int> factory(
    int value, {
    int min = RangeValue._defaultMin,
    int max = RangeValue._defaultMax,
  }) =>
      option(value != null && (value >= min && value <= max), value);

  const RangeValue(Option<int> value) : super(value);

  @override
  List<Object> get props => [valueOption, min, max];
}
