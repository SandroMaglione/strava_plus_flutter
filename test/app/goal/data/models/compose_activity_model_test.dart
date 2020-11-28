import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/complex_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/compose_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/complex_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/compose_activity.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap = json.decode(fixture("compose_activity_model.json"))
      as Map<String, dynamic>;

  test('should be of type ComplexActivityModel', () async {
    expect(Shared.composeActivityModel, isA<ComplexActivityModel>());
  });

  test('should be of type ComplexActivity', () async {
    expect(Shared.composeActivityModel, isA<ComplexActivity>());
  });

  test('should be of type ComposeActivity', () async {
    expect(Shared.composeActivityModel, isA<ComposeActivity>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.composeActivityModel, Shared.composeActivityModelCopy);
  });

  group('toJson', () {
    test('should convert correctly to json', () async {
      expect(Shared.composeActivityModel.toJson(), jsonMap);
    });
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(
          ComposeActivityModel.fromJson(jsonMap), Shared.composeActivityModel);
    });
  });
}
