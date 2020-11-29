import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/photo_primary_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photo_primary.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("photo_primary_model.json")) as Map<String, dynamic>;

  test('should be of type PhotoPrimary', () async {
    expect(Shared.photoPrimaryModel, isA<PhotoPrimary>());
  });

  test('should be equals based on its unique_id only', () async {
    expect(Shared.photoPrimaryModel, Shared.photoPrimaryModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(PhotoPrimaryModel.fromJson(jsonMap), Shared.photoPrimaryModel);
    });
  });
}
