import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/data_activity.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/metric/final_metric.dart';

class FinalMetricCard extends StatelessWidget {
  final FinalMetric finalMetric;
  final void Function() addChild;

  const FinalMetricCard({
    @required this.finalMetric,
    @required this.addChild,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: addChild,
        child: Column(
          children: [
            Text((finalMetric.complexActivity as DataActivity)
                .activityId
                .toString()),
            Text(finalMetric.goalComparator.toString()),
            Text(finalMetric.value.toString()),
          ],
        ),
      ),
    );
  }
}
