import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/goal/data/models/goal_metric_model.dart';

void main() {
  group('fromJson', () {
    test('should throw FormatException when json model not recognized',
        () async {
      expect(() => GoalMetricModel.fromJson(<String, dynamic>{}),
          throwsFormatException);
    });
  });
}
