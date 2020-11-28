import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/laps_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/laps.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("laps_model.json")) as Map<String, dynamic>;

  test('should be of type Laps', () async {
    expect(Shared.lapsModel, isA<Laps>());
  });

  test('should be equals based on its id only', () async {
    expect(Shared.lapsModel, Shared.lapsModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(LapsModel.fromJson(jsonMap), Shared.lapsModel);
    });
  });
}
