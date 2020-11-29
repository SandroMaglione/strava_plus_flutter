import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';

class SummaryActivityCard extends StatelessWidget {
  final SummaryActivity summaryActivity;

  const SummaryActivityCard({
    @required this.summaryActivity,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openDetailedActivity(context),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryActivity.startDateLocalFormat,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                summaryActivity.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Divider(),
              Text('Avg speed: ${summaryActivity.averageSpeed}'),
              Text('Duration: ${summaryActivity.elapsedTime}'),
              Text('Distance: ${summaryActivity.distance}m'),
              Text('Max speed: ${summaryActivity.maxSpeed}'),
              Text('Activity: ${summaryActivity.type}'),
              Text('Elevation gain: ${summaryActivity.totalElevationGain}'),
            ],
          ),
        ),
      ),
    );
  }

  void _openDetailedActivity(BuildContext context) {
    context.navigator.push(
      Routes.DetailedActivityScreen,
      arguments: DetailedActivityScreenArguments(
        id: summaryActivity.id,
      ),
    );
  }
}
