import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';
import 'package:mobile_polimi_project/core/enums/goal_operation.dart';
import 'package:mobile_polimi_project/core/extensions/enum_extenstion.dart';

void main() {
  group('GoalOperation', () {
    group('apply', () {
      test('should compute the addition of the given values', () async {
        expect(GoalOperation.addition.apply(10, 10), 20);
      });

      test('should compute the subtraction of the given values', () async {
        expect(GoalOperation.subtraction.apply(10, 10), 0);
      });

      test('should compute the multiplication of the given values', () async {
        expect(GoalOperation.multiplication.apply(10, 10), 100);
      });

      test('should compute the division of the given values', () async {
        expect(GoalOperation.division.apply(10, 10), 1);
      });

      test('should return 0 when the division is over 0', () async {
        expect(GoalOperation.division.apply(10, 0), 0);
      });
    });
  });

  group('GoalComparator', () {
    group('compare', () {
      test('should compute correct tuple when >', () async {
        expect(GoalComparator.greater.compare(10, 10), tuple2(1.0, false));
        expect(GoalComparator.greater.compare(5, 10), tuple2(0.5, false));
        expect(GoalComparator.greater.compare(1, 10), tuple2(0.1, false));
        expect(GoalComparator.greater.compare(20, 10), tuple2(2.0, true));
      });

      test('should compute correct tuple when >=', () async {
        expect(GoalComparator.greater_equal.compare(10, 10), tuple2(1.0, true));
        expect(GoalComparator.greater_equal.compare(5, 10), tuple2(0.5, false));
        expect(GoalComparator.greater_equal.compare(1, 10), tuple2(0.1, false));
        expect(GoalComparator.greater_equal.compare(20, 10), tuple2(2.0, true));
      });

      test('should compute correct tuple when <', () async {
        expect(GoalComparator.less.compare(10, 10), tuple2(1.0, false));
        expect(GoalComparator.less.compare(5, 10), tuple2(2.0, true));
        expect(GoalComparator.less.compare(1, 10), tuple2(10.0, true));
        expect(GoalComparator.less.compare(20, 10), tuple2(0.5, false));
      });

      test('should compute correct tuple when <=', () async {
        expect(GoalComparator.less_equal.compare(10, 10), tuple2(1.0, true));
        expect(GoalComparator.less_equal.compare(5, 10), tuple2(2.0, true));
        expect(GoalComparator.less_equal.compare(1, 10), tuple2(10.0, true));
        expect(GoalComparator.less_equal.compare(20, 10), tuple2(0.5, false));
      });

      test('should compute correct tuple when ==', () async {
        expect(GoalComparator.equal.compare(10, 10), tuple2(1.0, true));
        expect(GoalComparator.equal.compare(20, 20), tuple2(1.0, true));
        expect(GoalComparator.equal.compare(5, 10), tuple2(0.5, false));
        expect(GoalComparator.equal.compare(20, 10), tuple2(0.0, false));
        expect(GoalComparator.equal.compare(0, 10), tuple2(0.0, false));
      });
    });
  });
}
