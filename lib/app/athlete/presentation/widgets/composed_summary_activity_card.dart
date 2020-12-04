import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/value_range_label.dart';
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
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.rpe,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.mood,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.experience,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.temperature,
              ),
              SelectionValueLabel(
                selectionValue:
                    composedSummaryActivity.extraStats.humorPostWorkout,
              ),
              SelectionValueLabel(
                selectionValue:
                    composedSummaryActivity.extraStats.motivationPreWorkout,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.lastMeal,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.workoutScope,
              ),
              SelectionValueLabel(
                selectionValue:
                    composedSummaryActivity.extraStats.withStretching,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.isSpecial,
              ),
              SelectionValueLabel(
                selectionValue: composedSummaryActivity.extraStats.isSupervised,
              ),
              SelectionValueLabel(
                selectionValue:
                    composedSummaryActivity.extraStats.isEspeciallyBad,
              ),
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
