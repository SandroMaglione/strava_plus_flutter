import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/goal_name.dart';

void main() {
  const validName = 'abcd';

  test('should assert error when name passed null', () async {
    expect(() => GoalName(null), throwsAssertionError);
  });

  test('should initialize None option when list has not length 2', () async {
    expect(GoalName('ab').name, none<String>());
  });

  test('should initialize Some option when list has length 2', () async {
    expect(GoalName(validName).name, some(validName));
  });
}
