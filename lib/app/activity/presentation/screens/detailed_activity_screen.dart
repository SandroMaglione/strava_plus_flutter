import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/detailed_activity_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:mobile_polimi_project/injectable.dart';

class DetailedActivityScreen extends StatelessWidget {
  final int id;

  const DetailedActivityScreen({
    @required this.id,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BuildProvider(
          providers: [
            BlocProvider<DetailedActivityCubit>(
              create: (context) => getIt<DetailedActivityCubit>()..init(id),
            )
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
                    Text(
                      activity.name,
                      style: theme.customTextTheme.textTheme.headline4,
                    ),
                    Text(
                      activity.timezone,
                      style: theme.customTextTheme.textTheme.subtitle1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ...activity.splitsMetric
                              .map(
                                (a) => Text(
                                  '${a.distance}',
                                  style:
                                      theme.customTextTheme.textTheme.bodyText1,
                                ),
                              )
                              .toIterable(),
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
}
