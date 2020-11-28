import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/compose_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/compose_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("compose_metric_model.json")) as Map<String, dynamic>;

  test('should be of type GoalMetricModel', () async {
    expect(Shared.composeMetricModel, isA<GoalMetricModel>());
  });

  test('should be of type GoalMetric', () async {
    expect(Shared.composeMetricModel, isA<GoalMetric>());
  });

  test('should be of type ComposeMetric', () async {
    expect(Shared.composeMetricModel, isA<ComposeMetric>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.composeMetricModel, Shared.composeMetricModelCopy);
  });

  group('toJson', () {
    test('should convert correctly to json', () async {
      expect(Shared.composeMetricModel.toJson(), jsonMap);
    });
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(ComposeMetricModel.fromJson(jsonMap), Shared.composeMetricModel);
    });
  });
}
