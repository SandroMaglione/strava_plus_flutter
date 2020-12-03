import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key key}) : super(key: key);

  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return BlocBuilder<ActivityListCubit,
        AsyncState<dartz.IList<ComposedSummaryActivity>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: const CircularProgressIndicator(),
        ),
        success: (activityList) => SingleChildScrollView(
          child: Column(
            children: [
              OutlineButton(
                onPressed: () => setState(
                  () => _calendarController.setSelectedDay(
                    activityList.foldLeft(
                      DateTime.now(),
                      (previous, a) =>
                          a.summaryActivity.startDate.isBefore(previous)
                              ? a.summaryActivity.startDate
                              : previous,
                    ),
                    animate: true,
                  ),
                ),
              ),
              TableCalendar(
                calendarController: _calendarController,
                events: activityList.foldLeft(
                  {},
                  (previous, a) => {
                    ...previous,
                    a.summaryActivity.startDate: <SummaryActivity>[
                      a.summaryActivity
                    ]
                  },
                ),
                calendarStyle: CalendarStyle(
                  markersColor: Colors.deepOrange,
                  contentPadding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 30,
                  ),
                  contentDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.customColorTheme.accentColor,
                    border: Border.all(
                      width: 1,
                      color: theme.customColorTheme.primaryColor,
                    ),
                  ),
                  eventDayStyle: theme.customTextTheme.textTheme.headline4,
                  outsideDaysVisible: false,
                  renderDaysOfWeek: true,
                  weekendStyle: theme.customTextTheme.textTheme.caption,
                ),
                onDaySelected: (dateTime, events, _) {
                  // setState(
                  //   () => _selectedEvents = [
                  //     ...events.map((dynamic e) => e as SummaryActivity),
                  //   ],
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
