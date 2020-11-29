import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/activity/data/models/segment_efforts_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/segment_efforts.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared.dart';

void main() {
  final jsonMap = json.decode(fixture("segment_efforts_model.json"))
      as Map<String, dynamic>;

  test('should be of type SegmentEfforts', () async {
    expect(Shared.segmentEffortsModel, isA<SegmentEfforts>());
  });

  test('should be equals based on its unique_id only', () async {
    expect(Shared.segmentEffortsModel, Shared.segmentEffortsModelCopy);
  });

  group('fromJson', () {
    test('should convert correctly to json', () async {
      expect(SegmentEffortsModel.fromJson(jsonMap), Shared.segmentEffortsModel);
    });
  });
}
