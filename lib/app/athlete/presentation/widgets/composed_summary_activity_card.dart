import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/selection_value_label.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';
import 'package:mobile_polimi_project/core/extensions/duration_extension.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:time/time.dart';

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
        color: theme.customColorTheme.scaffoldBackgroundColorLight,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                composedSummaryActivity.summaryActivity.startDateLocalFormat,
                style: theme.customTextTheme.textTheme.caption,
              ),
              Text(
                '${composedSummaryActivity.summaryActivity.elapsedTime.seconds.toHHmmss}',
                style: theme.customTextTheme.textTheme.headline2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                  top: 5,
                ),
                child: StepProgressIndicator(
                  totalSteps:
                      (composedSummaryActivity.extraStats.maxTotal * 100)
                          .toInt(),
                  currentStep:
                      (composedSummaryActivity.extraStats.points * 100).toInt(),
                  unselectedColor:
                      theme.customColorTheme.scaffoldBackgroundColor,
                  selectedColor: theme.customColorTheme.primaryColorLight,
                  roundedEdges: const Radius.circular(20),
                  padding: 0,
                ),
              ),
              Wrap(
                spacing: 15,
                children: [
                  SelectionValueLabel(
                    selectionValue: composedSummaryActivity.extraStats.rpe,
                  ),
                  SelectionValueLabel(
                    selectionValue: composedSummaryActivity.extraStats.mood,
                  ),
                  SelectionValueLabel(
                    selectionValue:
                        composedSummaryActivity.extraStats.experience,
                  ),
                  SelectionValueLabel(
                    selectionValue:
                        composedSummaryActivity.extraStats.temperature,
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
                    selectionValue:
                        composedSummaryActivity.extraStats.workoutScope,
                  ),
                  SelectionValueLabel(
                    selectionValue:
                        composedSummaryActivity.extraStats.withStretching,
                  ),
                  SelectionValueLabel(
                    selectionValue:
                        composedSummaryActivity.extraStats.isSpecial,
                  ),
                  SelectionValueLabel(
                    selectionValue:
                        composedSummaryActivity.extraStats.isSupervised,
                  ),
                  SelectionValueLabel(
                    selectionValue:
                        composedSummaryActivity.extraStats.isEspeciallyBad,
                  ),
                ],
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
