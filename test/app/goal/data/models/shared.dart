import 'package:mobile_polimi_project/app/goal/data/models/compose_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/compose_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/data_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/final_metric_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/user_goal.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';
import 'package:mobile_polimi_project/core/enums/goal_comparator.dart';
import 'package:mobile_polimi_project/core/enums/goal_operation.dart';
import 'package:mobile_polimi_project/core/enums/goal_priority.dart';
import 'package:mobile_polimi_project/core/enums/metric_logic.dart';

abstract class Shared {
  static const dataActivityModel = const DataActivityModel(ActivityId.id1);
  static const dataActivityModelCopy = const DataActivityModel(ActivityId.id1);
  static const composeActivityModel = const ComposeActivityModel(
    activity1: dataActivityModel,
    activity2: dataActivityModel,
    operation: GoalOperation.addition,
  );
  static const composeActivityModelCopy = const ComposeActivityModel(
    activity1: dataActivityModel,
    activity2: dataActivityModel,
    operation: GoalOperation.addition,
  );
  static const finalMetricModel = const FinalMetricModel(
    complexActivity: dataActivityModel,
    goalComparator: GoalComparator.equal,
    value: 10,
  );
  static const finalMetricModelCopy = const FinalMetricModel(
    complexActivity: dataActivityModel,
    goalComparator: GoalComparator.equal,
    value: 10,
  );
  static const composeMetricModel = const ComposeMetricModel(
    metricLogic: MetricLogic.and,
    goalMetricList: [finalMetricModel],
  );
  static const composeMetricModelCopy = const ComposeMetricModel(
    metricLogic: MetricLogic.and,
    goalMetricList: [finalMetricModel],
  );

  static final dateTime = DateTime(2020, 10, 10);
  static final endDateTime = DateTime(2020, 10, 20);
  static final userGoalModelFinalMetric = UserGoalModel(
    id: 'id',
    goalName: 'name',
    createdDate: dateTime,
    lastEditDate: dateTime,
    startDate: dateTime,
    endDate: endDateTime,
    color: 0,
    priority: GoalPriority.high,
    metrics: finalMetricModel,
  );
  static final userGoalModelComposeMetric = UserGoalModel(
    id: 'id',
    goalName: 'name',
    createdDate: dateTime,
    lastEditDate: dateTime,
    startDate: dateTime,
    endDate: endDateTime,
    color: 0,
    priority: GoalPriority.high,
    metrics: composeMetricModel,
  );
  static final userGoalModelNested = UserGoalModel(
    id: 'id',
    goalName: 'name',
    createdDate: dateTime,
    lastEditDate: dateTime,
    startDate: dateTime,
    endDate: endDateTime,
    color: 0,
    priority: GoalPriority.high,
    metrics: const ComposeMetricModel(
      metricLogic: MetricLogic.and,
      goalMetricList: [
        finalMetricModel,
        const ComposeMetricModel(
          metricLogic: MetricLogic.or,
          goalMetricList: [
            finalMetricModel,
            finalMetricModel,
            const ComposeMetricModel(
              metricLogic: MetricLogic.and,
              goalMetricList: [
                finalMetricModel,
                finalMetricModel,
              ],
            ),
          ],
        ),
      ],
    ),
  );
  static final userGoalModelInvalid = UserGoalModel(
    id: 'id',
    goalName: 'aa',
    createdDate: dateTime,
    lastEditDate: dateTime,
    startDate: endDateTime,
    endDate: dateTime,
    color: 0,
    priority: GoalPriority.high,
    metrics: finalMetricModel,
  );
  static final UserGoal userGoal = userGoalModelFinalMetric;
  static final UserGoal userGoalInvalid = userGoalModelInvalid;
}
