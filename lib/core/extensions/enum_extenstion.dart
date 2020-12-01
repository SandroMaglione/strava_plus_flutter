import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';
import 'package:mobile_polimi_project/core/enums/goal_operation.dart';

extension Apply on GoalOperation {
  double apply(
    double value1,
    double value2,
  ) {
    switch (this) {
      case GoalOperation.addition:
        return value1 + value2;
      case GoalOperation.subtraction:
        return value1 - value2;
      case GoalOperation.multiplication:
        return value1 * value2;
      case GoalOperation.division:
        return value2 != 0 ? value1 / value2 : 0;
      default:
        return 0;
    }
  }
}

extension Comparison on GoalComparator {
  Tuple2<double, bool> compare(double value, double target) {
    switch (this) {
      case GoalComparator.greater:
        return tuple2(
          value / target,
          value > target,
        );
      case GoalComparator.greater_equal:
        return tuple2(
          value / target,
          value >= target,
        );
      case GoalComparator.less:
        return tuple2(
          target / value,
          value < target,
        );
      case GoalComparator.less_equal:
        return tuple2(
          target / value,
          value <= target,
        );
      case GoalComparator.equal:
        return tuple2(
          // value == target => 1 - 0 = 1 (100%)
          1 - ((value - target).abs() / target),
          value == target,
        );
      default:
        throw Exception(
            '[GoalComparator.compare]: Unrecognized GoalComparator, impossible to continue!');
    }
  }
}
