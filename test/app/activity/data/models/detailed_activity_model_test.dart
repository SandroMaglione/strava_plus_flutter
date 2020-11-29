import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/detailed_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap = json.decode(fixture("detailed_activity_model.json"))
      as Map<String, dynamic>;
  final jsonMapPlayground =
      json.decode(fixture("detailed_activity_model_playground.json"))
          as Map<String, dynamic>;

  test('should be of type DetailedActivity', () async {
    expect(Shared.detailedActivityModel, isA<DetailedActivity>());
  });

  test('should be equals based on its id only', () async {
    expect(Shared.detailedActivityModel, Shared.detailedActivityModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(DetailedActivityModel.fromJson(jsonMap),
          Shared.detailedActivityModel);
    });

    test('should convert correctly to json a model from Strava playgroud',
        () async {
      expect(DetailedActivityModel.fromJson(jsonMapPlayground),
          isA<DetailedActivityModel>());
    });
  });
}
