import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/composed_summary_activity_card.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class SummaryActivityView extends StatelessWidget {
  const SummaryActivityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return BlocBuilder<ActivityListCubit,
        AsyncState<IList<ComposedSummaryActivity>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: const CircularProgressIndicator(),
        ),
        error: (failure) => Center(
          child: Text(failure.errorMessage),
        ),
        success: (activityList) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Strava',
                    style: theme.customTextTheme.textTheme.headline5,
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.palette),
                    onPressed: () => context.read<ThemeCubit>().changeTheme(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  ...activityList
                      .map(
                        (a) => ComposedSummaryActivityCard(
                          composedSummaryActivity: a,
                        ),
                      )
                      .toIterable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
