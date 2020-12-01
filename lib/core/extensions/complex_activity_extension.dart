import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/complex_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/compose_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/data_activity.dart';
import 'package:mobile_polimi_project/core/extensions/summary_activity_extension.dart';
import 'package:mobile_polimi_project/core/extensions/enum_extenstion.dart';

extension ComplexValue on ComplexActivity {
  double nestedValue(IList<SummaryActivity> summaryActivityList) {
    final activity = this;
    if (activity is DataActivity) {
      return activity.dataValue(summaryActivityList);
    } else if (activity is ComposeActivity) {
      return activity.computeOperation(summaryActivityList);
    } else {
      return 0;
    }
  }
}

extension DataValue on DataActivity {
  double dataValue(IList<SummaryActivity> summaryActivityList) =>
      summaryActivityList.activityProgress(
        this.activityId,
      );
}

extension ComposeValue on ComposeActivity {
  double computeOperation(IList<SummaryActivity> summaryActivityList) =>
      this.operation.apply(
            this.activity1.nestedValue(
                  summaryActivityList,
                ),
            this.activity2.nestedValue(
                  summaryActivityList,
                ),
          );
}
