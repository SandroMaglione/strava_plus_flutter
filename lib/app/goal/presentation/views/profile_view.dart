import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return BlocBuilder<ActivityListCubit, AsyncState<IList<SummaryActivity>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: const CircularProgressIndicator(),
        ),
        success: (activityList) {
          final listDateRange = activityList.filter(
            (a) =>
                a.startDate.isBefore(DateTime(2019, 11)) &&
                a.startDate.isAfter(
                    DateTime(2019, 11).subtract(const Duration(days: 100))),
          );

          return SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total activities: ${listDateRange.length()}',
                ),
                Text(
                  'Total moving time: ${listDateRange.foldLeft<double>(0, (previous, a) => previous + a.movingTime)}',
                ),
                Text('Points: ${activityPoints(listDateRange)}'),
                Column(
                  children: [
                    ...listDateRange.map(
                      (a) {
                        final pts = a.movingTime /
                            DateTime(2019, 11).difference(a.startDate).inDays;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Value: +$pts pts',
                            ),
                            StepProgressIndicator(
                              totalSteps: 100,
                              padding: 0,
                              currentStep: 100 - pts.toInt(),
                              selectedColor: theme.customColorTheme.accentColor,
                              unselectedColor:
                                  theme.customColorTheme.errorColor,
                            ),
                          ],
                        );
                      },
                    ).toIterable()
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  double activityPoints(IList<SummaryActivity> activityList) =>
      activityList.foldLeft(
        0,
        (prev, a) =>
            prev +
            (a.movingTime / DateTime(2019, 11).difference(a.startDate).inDays),
      );
}
