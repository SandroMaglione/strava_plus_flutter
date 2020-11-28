import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/complex_activity_model.dart';

void main() {
  group('fromJson', () {
    test('should throw FormatException when json model not recognized',
        () async {
      expect(() => ComplexActivityModel.fromJson(<String, dynamic>{}),
          throwsFormatException);
    });
  });
}
