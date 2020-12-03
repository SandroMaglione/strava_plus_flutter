import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';

class ComposedSummaryActivityModel extends ComposedSummaryActivity {
  @override
  final ExtraStatsModel extraStats;
  @override
  final SummaryActivityModel summaryActivity;

  const ComposedSummaryActivityModel({
    @required this.extraStats,
    @required this.summaryActivity,
  });
}
