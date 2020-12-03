import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';

abstract class ComposedSummaryActivity extends Equatable {
  const ComposedSummaryActivity();

  SummaryActivity get summaryActivity;
  ExtraStats get extraStats;

  @override
  List<Object> get props => [
        summaryActivity,
        extraStats,
      ];
}
