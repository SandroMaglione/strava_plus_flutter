import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HiveManager {
  /// Box contains extra stats about each Strava activity
  static const _statsActivitiesBoxKey = "STATS_ACTIVITIES_BOX_KEY";

  /// Box contains weight history
  static const _weightBoxKey = "WEIGHT_BOX_KEY";

  const HiveManager();

  Future<void> initialize() async {
    await Hive.initFlutter();
    await Hive.openBox<String>(HiveManager._statsActivitiesBoxKey);
    await Hive.openBox<String>(HiveManager._weightBoxKey);
  }

  /// Get reference to box for Strava activities stats
  Box<String> get statsActivitiesBox =>
      Hive.box<String>(HiveManager._statsActivitiesBoxKey);

  /// Get reference to box for weight history
  Box<String> get weightBox => Hive.box<String>(HiveManager._weightBoxKey);
}
