import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap = json.decode(fixture("summary_activity_model.json"))
      as Map<String, dynamic>;
  final jsonMapPlaygroud =
      json.decode(fixture("summary_activity_model_playground.json"))
          as Map<String, dynamic>;

  test('should be of type SummaryActivity', () async {
    expect(Shared.summaryActivityModel, isA<SummaryActivity>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.summaryActivityModel, Shared.summaryActivityModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(
          SummaryActivityModel.fromJson(jsonMap), Shared.summaryActivityModel);
    });

    test('should convert correctly to json a model from Strava playground',
        () async {
      expect(SummaryActivityModel.fromJson(jsonMapPlaygroud),
          isA<SummaryActivityModel>());
    });
  });
}
