import 'package:dartz/dartz.dart';

/// Contains value of mood stats (1-5)
class MoodValue {
  final Option<int> mood;

  factory MoodValue(int mood) {
    assert(mood != null, "[MoodValue]: Mood value cannot be null");
    return MoodValue._(option(mood >= 1 && mood <= 5, mood));
  }

  const MoodValue._(this.mood);
}
