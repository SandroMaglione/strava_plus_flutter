import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class StatsView extends StatefulWidget {
  const StatsView({Key key}) : super(key: key);

  @override
  _StatsViewState createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
  DateTime startDateFilter =
      DateTime(2019, 10).subtract(const Duration(days: 30));
  DateTime endDateFilter = DateTime(2019, 10);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityListCubit,
        AsyncState<dartz.IList<SummaryActivity>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: const CircularProgressIndicator(),
        ),
        success: (activityList) {
          final listDateRange = activityList.filter(
            (a) =>
                a.startDate.isBefore(endDateFilter) &&
                a.startDate.isAfter(startDateFilter),
          );

          return SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'From ${DateFormat('dd MMMM yyyy').format(startDateFilter)} - To ${DateFormat('dd MMMM yyyy').format(endDateFilter)}',
                ),
                const Divider(),
                Text('Num activities: ${listDateRange.length()}'),
                Text(
                  'Mean avg speed: ${listDateRange.foldLeft<double>(0, (previous, a) => previous + a.averageSpeed) / listDateRange.length()}',
                ),
                Text(
                  'Mean distance: ${listDateRange.foldLeft<double>(0, (previous, a) => previous + a.distance) / listDateRange.length()}',
                ),
                Text(
                  'Mean elapsed time: ${listDateRange.foldLeft<double>(0, (previous, a) => previous + a.elapsedTime) / listDateRange.length()}',
                ),
                Text(
                  'Total elapsed time: ${listDateRange.foldLeft<double>(0, (previous, a) => previous + a.elapsedTime)}',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
