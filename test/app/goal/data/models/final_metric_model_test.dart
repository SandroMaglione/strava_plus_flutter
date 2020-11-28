import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/final_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/final_metric.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/goal_metric.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("final_metric_model.json")) as Map<String, dynamic>;

  test('should be of type GoalMetricModel', () async {
    expect(Shared.finalMetricModel, isA<GoalMetricModel>());
  });

  test('should be of type GoalMetric', () async {
    expect(Shared.finalMetricModel, isA<GoalMetric>());
  });

  test('should be of type FinalMetric', () async {
    expect(Shared.finalMetricModel, isA<FinalMetric>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.finalMetricModel, Shared.finalMetricModelCopy);
  });

  group('toJson', () {
    test('should convert correctly to json', () async {
      expect(Shared.finalMetricModel.toJson(), jsonMap);
    });
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(FinalMetricModel.fromJson(jsonMap), Shared.finalMetricModel);
    });
  });
}
