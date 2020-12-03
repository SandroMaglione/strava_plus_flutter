import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2_datetime.dart';

void main() {
  final startDate = DateTime(2020, 10, 10);
  final endDate = DateTime(2020, 10, 20);

  test('should assert error when any date passed null', () async {
    expect(() => List2Datetime(null, DateTime.now()), throwsAssertionError);
    expect(() => List2Datetime(DateTime.now(), null), throwsAssertionError);
  });

  test('should initialize None option when start date is after end date',
      () async {
    expect(
        List2Datetime(
          endDate,
          startDate,
        ).dates,
        none<List2<DateTime>>());
  });

  test('should initialize Some option when start date is before end date',
      () async {
    List2Datetime(
      startDate,
      endDate,
    ).dates.fold(
      () => null,
      (a) {
        expect(a.first, some(startDate));
        expect(a.second, some(endDate));
      },
    );
  });
}
