import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/app/goal/domain/valueobjects/list2_datetime.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMapFinalMetric =
      json.decode(fixture("user_goal_model_final_metric.json"))
          as Map<String, dynamic>;
  final jsonMapComposeMetric =
      json.decode(fixture("user_goal_model_compose_metric.json"))
          as Map<String, dynamic>;
  final jsonMapNested = json.decode(fixture("user_goal_model_nested.json"))
      as Map<String, dynamic>;

  test('should be of type UserGoal', () async {
    expect(Shared.userGoalModelFinalMetric, isA<UserGoal>());
    expect(Shared.userGoalModelComposeMetric, isA<UserGoal>());
  });

  test('should be equals based on the id (even when different metrics)',
      () async {
    expect(Shared.userGoalModelFinalMetric, Shared.userGoalModelComposeMetric);
  });

  group('toJson', () {
    test('should convert correctly to json with FinalMetric', () async {
      expect(Shared.userGoalModelFinalMetric.toJson(), jsonMapFinalMetric);
    });

    test('should convert correctly to json with ComposeMetric', () async {
      expect(Shared.userGoalModelComposeMetric.toJson(), jsonMapComposeMetric);
    });
  });

  group('fromJson', () {
    test('should convert correctly to json with FinalMetric', () async {
      expect(UserGoalModel.fromJson(jsonMapFinalMetric),
          Shared.userGoalModelFinalMetric);
    });

    test('should convert correctly to json with ComposeMetric', () async {
      expect(UserGoalModel.fromJson(jsonMapComposeMetric),
          Shared.userGoalModelComposeMetric);
    });

    test('should convert correctly to json a complex nested UserGoal',
        () async {
      expect(UserGoalModel.fromJson(jsonMapNested), Shared.userGoalModelNested);
    });
  });

  group('UserGoal', () {
    test('should contain the correct targetDates from the model', () async {
      Shared.userGoal.targetDates.dates.fold(
        () => null,
        (a) {
          a.first.fold(
            () => null,
            (a) => a.toIso8601String() == Shared.dateTime.toIso8601String(),
          );
          a.second.fold(
            () => null,
            (a) => a.toIso8601String() == Shared.endDateTime.toIso8601String(),
          );
        },
      );
    });

    test('should contain invalid targetDates from the model', () async {
      expect(Shared.userGoalInvalid.targetDates.dates, none<List2Datetime>());
    });

    test('should contain invalid name from the model', () async {
      expect(Shared.userGoalInvalid.name.name, none<String>());
    });
  });
}
