import 'package:dartz/dartz.dart';

/// Contains value of rpe stats (1-11)
class RpeValue {
  final Option<int> rpe;

  factory RpeValue(int rpe) {
    assert(rpe != null, "[RpeValue]: Rpe value cannot be null");
    return RpeValue._(option(rpe >= 1 && rpe <= 11, rpe));
  }

  const RpeValue._(this.rpe);
}
