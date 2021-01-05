import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HiveManager {
  /// Box contains extra stats about each Strava activity
  static const _statsActivitiesBoxKey = "STATS_ACTIVITIES_BOX_KEY";

  /// Box contains weight history
  static const _weightBoxKey = "WEIGHT_BOX_KEY";

  /// Box contains sleeping history
  static const _sleepBoxKey = "SLEEP_BOX_KEY";

  /// Box contains diet history
  static const _dietBoxKey = "DIET_BOX_KEY";

  /// Box contains water history
  static const _waterBoxKey = "WATER_BOX_KEY";

  const HiveManager();

  Future<void> initialize() async {
    await Hive.initFlutter();
    await Hive.openBox<String>(HiveManager._statsActivitiesBoxKey);
    await Hive.openBox<String>(HiveManager._weightBoxKey);
    await Hive.openBox<String>(HiveManager._sleepBoxKey);
    await Hive.openBox<String>(HiveManager._dietBoxKey);
    await Hive.openBox<String>(HiveManager._waterBoxKey);
  }

  Future<void> clearAll() async {
    statsActivitiesBox.clear();
    weightBox.clear();
    sleepBox.clear();
    dietBox.clear();
    waterBox.clear();
  }

  /// Get reference to box for Strava activities stats
  Box<String> get statsActivitiesBox =>
      Hive.box<String>(HiveManager._statsActivitiesBoxKey);

  /// Get reference to box for weight history
  Box<String> get weightBox => Hive.box<String>(HiveManager._weightBoxKey);

  /// Get reference to box for sleeping history
  Box<String> get sleepBox => Hive.box<String>(HiveManager._sleepBoxKey);

  /// Get reference to box for diet history
  Box<String> get dietBox => Hive.box<String>(HiveManager._dietBoxKey);

  /// Get reference to box for water history
  Box<String> get waterBox => Hive.box<String>(HiveManager._waterBoxKey);
}
