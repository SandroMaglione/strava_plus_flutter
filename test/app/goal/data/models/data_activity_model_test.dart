import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/complex_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/data_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/complex_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/data_activity.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("data_activity_model.json")) as Map<String, dynamic>;

  test('should be of type ComplexActivityModel', () async {
    expect(Shared.dataActivityModel, isA<ComplexActivityModel>());
  });

  test('should be of type ComplexActivity', () async {
    expect(Shared.dataActivityModel, isA<ComplexActivity>());
  });

  test('should be of type DataActivity', () async {
    expect(Shared.dataActivityModel, isA<DataActivity>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.dataActivityModel, Shared.dataActivityModelCopy);
  });

  group('toJson', () {
    test('should convert correctly to json', () async {
      expect(Shared.dataActivityModel.toJson(), jsonMap);
    });
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(DataActivityModel.fromJson(jsonMap), Shared.dataActivityModel);
    });
  });
}
