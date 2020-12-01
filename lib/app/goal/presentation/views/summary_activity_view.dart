import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/goal/presentation/widgets/summary_activity_card.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class SummaryActivityView extends StatelessWidget {
  const SummaryActivityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityListCubit, AsyncState<IList<SummaryActivity>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: const CircularProgressIndicator(),
        ),
        success: (activityList) => ListView(
          padding: const EdgeInsets.all(15),
          children: [
            ...activityList
                .map(
                  (summaryActivity) => SummaryActivityCard(
                    summaryActivity: summaryActivity,
                  ),
                )
                .toIterable(),
          ],
        ),
      ),
    );
  }
}
