import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/detailed_activity_stat.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/extra_value_bool_selection.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/extra_value_range_selection.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:mobile_polimi_project/injectable.dart';
import 'package:mobile_polimi_project/core/extensions/duration_extension.dart';

class DetailedActivityScreen extends StatelessWidget {
  final int id;

  const DetailedActivityScreen(this.id);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BuildProvider(
          providers: [
            BlocProvider<DetailedActivityCubit>(
              create: (context) => getIt<DetailedActivityCubit>()..init(id),
            ),
          ],
          builder: (context) =>
              BlocBuilder<DetailedActivityCubit, AsyncState<DetailedActivity>>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const Center(
                child: const CircularProgressIndicator(),
              ),
              success: (activity) {
                final theme = context.watch<ThemeCubit>().state;
                final extraStats =
                    context.select<ActivityListCubit, ExtraStats>(
                        (value) => value.extraStatsById(id));

                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 35,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat("dd MMMM yyyy - HH:mm:ss")
                              .format(activity.startDateLocal),
                          style: theme.customTextTheme.textTheme.caption,
                        ),
                        Text(
                          activity.name,
                          style: theme.customTextTheme.textTheme.headline5
                              .copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        DetailedActivityStat(
                          label: "Time",
                          value:
                              Duration(seconds: activity.elapsedTime).toHHmmss,
                        ),
                        DetailedActivityStat(
                          label: "Distance",
                          value:
                              "${(activity.distance / 1000).toStringAsFixed(2)}km",
                        ),
                        DetailedActivityStat(
                          label: "Elevation gain",
                          value: "${activity.totalElevationGain}m",
                        ),
                        DetailedActivityStat(
                          label: "Average speed",
                          value:
                              "${(activity.averageSpeed * 3.6).toStringAsFixed(2)}km/h",
                        ),
                        DetailedActivityStat(
                          label: "Max speed",
                          value:
                              "${(activity.maxSpeed * 3.6).toStringAsFixed(2)}km/h",
                        ),
                        const Divider(),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.rpe,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateRpe(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.mood,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateMood(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.experience,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateExperience(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.humorPostWorkout,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateHumorPostWorkout(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.motivationPreWorkout,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateMotivationPreWorkout(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.temperature,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateTemperature(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.lastMeal,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateLastMeal(id, value),
                        ),
                        ExtraValueRangeSelection(
                          rangeValue: extraStats.workoutScope,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateWorkoutScope(id, value),
                        ),
                        ExtraValueBoolSelection(
                          boolValue: extraStats.withStretching,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateWithStretching(id, value),
                        ),
                        ExtraValueBoolSelection(
                          boolValue: extraStats.isSpecial,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateIsSpecial(id, value),
                        ),
                        ExtraValueBoolSelection(
                          boolValue: extraStats.isSupervised,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateIsSupervised(id, value),
                        ),
                        ExtraValueBoolSelection(
                          boolValue: extraStats.isEspeciallyBad,
                          updateValue: (value) => context
                              .read<ActivityListCubit>()
                              .updateIsEspeciallyBad(id, value),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
