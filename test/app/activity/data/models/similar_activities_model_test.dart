import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/similar_activities_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/similar_activities.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap = json.decode(fixture("similar_activities_model.json"))
      as Map<String, dynamic>;

  test('should be of type SimilarActivities', () async {
    expect(Shared.similarActivitiesModel, isA<SimilarActivities>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.similarActivitiesModel, Shared.similarActivitiesModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(SimilarActivitiesModel.fromJson(jsonMap),
          Shared.similarActivitiesModel);
    });
  });
}
