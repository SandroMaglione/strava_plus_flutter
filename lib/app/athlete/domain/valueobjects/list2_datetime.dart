import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';

/// Start and end date of a [UserGoal]
class List2Datetime {
  final Option<List2<DateTime>> dates;

  factory List2Datetime(DateTime startDate, DateTime endDate) {
    assert(startDate != null && endDate != null,
        "[List2Datetime]: Dates cannot be null");
    return List2Datetime._(option(
      startDate.isBefore(endDate),
      List2([startDate, endDate]),
    ));
  }

  const List2Datetime._(this.dates);
}
