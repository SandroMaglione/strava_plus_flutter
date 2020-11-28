import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/trend_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/trend.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("trend_model.json")) as Map<String, dynamic>;

  test('should be of type Trend', () async {
    expect(Shared.trendModel, isA<Trend>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.trendModel, Shared.trendModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(TrendModel.fromJson(jsonMap), Shared.trendModel);
    });
  });
}
