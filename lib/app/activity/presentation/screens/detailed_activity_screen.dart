import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/extra_value_selection.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:mobile_polimi_project/injectable.dart';

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
                  child: Column(
                    children: [
                      Text(activity.name),
                      ExtraValueSelection(
                        rangeValue: extraStats.rpe,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateRpe(id, value),
                      ),
                      ExtraValueSelection(
                        rangeValue: extraStats.mood,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateMood(id, value),
                      ),
                      ExtraValueSelection(
                        rangeValue: extraStats.experience,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateExperience(id, value),
                      ),
                      ExtraValueSelection(
                        rangeValue: extraStats.humorPostWorkout,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateHumorPostWorkout(id, value),
                      ),
                      ExtraValueSelection(
                        rangeValue: extraStats.motivationPreWorkout,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateMotivationPreWorkout(id, value),
                      ),
                      ExtraValueSelection(
                        rangeValue: extraStats.temperature,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateTemperature(id, value),
                      ),
                      ExtraValueSelection(
                        rangeValue: extraStats.lastMeal,
                        updateValue: (value) => context
                            .read<ActivityListCubit>()
                            .updateLastMeal(id, value),
                      ),
                    ],
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
