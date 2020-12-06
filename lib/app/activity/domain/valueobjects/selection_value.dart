import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:recase/recase.dart';

/// Selection of value from given list
abstract class SelectionValue<T> extends Equatable {
  final Option<T> valueOption;

  /// Name of the value to select
  String get name =>
      this.runtimeType.toString().replaceAll('Value', '').titleCase;

  /// Value points assigned based on current value
  double get points;

  /// Message/Status associated with each value
  Map<T, String> get messages;

  /// Check if given value is the current selected
  bool isSelected(T value) => valueOption.getOrElse(() => null) == value;

  /// Get current message selected based on [valueOption]
  String get label;

  const SelectionValue(this.valueOption);
}
