import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/splits_metric_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/splits_metric.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("splits_metric_model.json")) as Map<String, dynamic>;

  test('should be of type SplitsMetric', () async {
    expect(Shared.splitsMetricModel, isA<SplitsMetric>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.splitsMetricModel, Shared.splitsMetricModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(SplitsMetricModel.fromJson(jsonMap), Shared.splitsMetricModel);
    });
  });
}
