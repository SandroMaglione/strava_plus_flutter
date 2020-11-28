import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/photos_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photos.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap =
      json.decode(fixture("photos_model.json")) as Map<String, dynamic>;

  test('should be of type Photos', () async {
    expect(Shared.photosModel, isA<Photos>());
  });

  test('should be equals based on its parameters', () async {
    expect(Shared.photosModel, Shared.photosModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(PhotosModel.fromJson(jsonMap), Shared.photosModel);
    });
  });
}
