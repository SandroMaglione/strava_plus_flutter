import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

/// Specify value in range [min]-[max]
abstract class RangeValue extends Equatable {
  static const int _defaultMin = 1;
  static const int _defaultMax = 5;

  final Option<int> valueOption;
  final int min = RangeValue._defaultMin;
  final int max = RangeValue._defaultMax;

  Option<String> _labelMessage(int value) => optionOf(messages[value]);

  /// Name of the value to select
  String get name => this.runtimeType.toString();

  /// Message/Status associated with each value
  Map<int, String> get messages;

  /// Minimum value key in the [messages] map
  Iterable<int> get messagesKeys => messages.keys;

  /// Check if given value is the current selected
  bool isSelected(int value) => valueOption.getOrElse(() => -1) == value;

  /// Get current message selected based on [valueOption]
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

  const RangeValue(this.valueOption);

  @override
  List<Object> get props => [valueOption, min, max];
}
