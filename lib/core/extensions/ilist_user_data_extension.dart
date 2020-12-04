import 'dart:math' as math;

import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';

extension ListUserDataStatistics on IList<WeightData> {
  IList<WeightData> dateRange({
    DateTime before,
    DateTime after,
  }) =>
      this.filter(
        (a) =>
            (before == null || a.dateTime.isBefore(before)) &&
            (after == null || a.dateTime.isAfter(after)),
      );

  double average({
    DateTime before,
    DateTime after,
  }) =>
      this
          .dateRange(before: before, after: after)
          .foldLeft<double>(0.0, (prev, a) => prev + a.value) /
      this.length();

  double max({
    DateTime before,
    DateTime after,
  }) =>
      this
          .dateRange(before: before, after: after)
          .foldLeft<double>(0.0, (prev, a) => math.max(prev, a.value));

  double min({
    DateTime before,
    DateTime after,
  }) =>
      this
          .dateRange(before: before, after: after)
          .foldLeft<double>(900.0, (prev, a) => math.min(prev, a.value));
}
