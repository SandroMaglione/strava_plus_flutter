import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';

class ComposedSummaryActivityCard extends StatelessWidget {
  final ComposedSummaryActivity composedSummaryActivity;

  const ComposedSummaryActivityCard({
    @required this.composedSummaryActivity,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return InkWell(
      onTap: () => _openDetailedActivity(context),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                composedSummaryActivity.summaryActivity.startDateLocalFormat,
                style: theme.customTextTheme.textTheme.subtitle1,
              ),
              Text(
                composedSummaryActivity.summaryActivity.name,
                style: theme.customTextTheme.textTheme.headline4,
              ),
              const Divider(),
              Text(
                '${composedSummaryActivity.extraStats.rpe.rpe.getOrElse(() => -1)}',
                style: theme.customTextTheme.textTheme.headline6,
              ),
              Text(
                '${composedSummaryActivity.extraStats.mood.mood.getOrElse(() => -1)}',
                style: theme.customTextTheme.textTheme.headline6,
              ),
              Text(
                  'Avg speed: ${composedSummaryActivity.summaryActivity.averageSpeed}'),
              Text(
                  'Duration: ${composedSummaryActivity.summaryActivity.elapsedTime}'),
              Text(
                  'Distance: ${composedSummaryActivity.summaryActivity.distance}m'),
              Text(
                  'Max speed: ${composedSummaryActivity.summaryActivity.maxSpeed}'),
              Text('Activity: ${composedSummaryActivity.summaryActivity.type}'),
              Text(
                  'Elevation gain: ${composedSummaryActivity.summaryActivity.totalElevationGain}'),
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
        id: composedSummaryActivity.summaryActivity.id,
      ),
    );
  }
}
