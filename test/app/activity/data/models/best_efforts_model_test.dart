import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/best_efforts_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/best_efforts.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("best_efforts_model.json")) as Map<String, dynamic>;

  test('should be of type BestEfforts', () async {
    expect(Shared.bestEffortsModel, isA<BestEfforts>());
  });

  test('should be equals based on its id only', () async {
    expect(Shared.bestEffortsModel, Shared.bestEffortsModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(BestEffortsModel.fromJson(jsonMap), Shared.bestEffortsModel);
    });
  });
}
