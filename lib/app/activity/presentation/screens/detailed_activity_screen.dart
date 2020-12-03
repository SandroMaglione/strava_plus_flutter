import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
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
                return Column(
                  children: [
                    BlocBuilder<ActivityListCubit,
                        AsyncState<IList<ComposedSummaryActivity>>>(
                      builder: (context, state) {
                        final extraStats =
                            context.select<ActivityListCubit, ExtraStats>(
                                (value) => value.extraStatsById(id));

                        return state.maybeWhen(
                          orElse: () => const CircularProgressIndicator(),
                          success: (_) => Column(
                            children: [
                              Text(
                                  '${extraStats.rpe.rpe.getOrElse(() => -1)} Rpe'),
                              Text(
                                  '${extraStats.mood.mood.getOrElse(() => -1)} Mood'),
                            ],
                          ),
                        );
                      },
                    ),
                    const Divider(),
                    Text(activity.name),
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(11, (index) => index + 1).map(
                            (e) => InkWell(
                              onTap: () => _updateRpe(context, e),
                              child: Chip(
                                label: Text('${e}rpe'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(5, (index) => index + 1).map(
                            (e) => InkWell(
                              onTap: () => _updateMood(context, e),
                              child: Chip(
                                label: Text('${e}mood'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _updateRpe(BuildContext context, int rpe) {
    context.read<ActivityListCubit>().updateRpe(id, rpe);
  }

  void _updateMood(BuildContext context, int mood) {
    context.read<ActivityListCubit>().updateMood(id, mood);
  }
}
