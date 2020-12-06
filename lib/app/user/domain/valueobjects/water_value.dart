import 'package:dartz/dartz.dart';

class WaterValue {
  /// Interval accepted
  static const interval = 0.25;

  final Option<double> water;

  factory WaterValue(double water) => WaterValue._(option(
      water != null && water >= 0 && water % WaterValue.interval == 0, water));

  const WaterValue._(this.water);
}
