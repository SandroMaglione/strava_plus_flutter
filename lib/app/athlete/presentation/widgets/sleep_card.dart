import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/date_time_selector.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/time_indicator.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'package:mobile_polimi_project/core/extensions/duration_extension.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SleepCard extends StatelessWidget {
  final DateTime date;
  final Option<SleepData> sleepDataOption;

  const SleepCard({
    @required this.sleepDataOption,
    @required this.date,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        child: Column(
          children: [
            Text(
              DateFormat('dd MMMM yyyy').format(date),
              style: theme.customTextTheme.textTheme.overline,
            ),
            Text(
              '${sleepDataOption.fold(() => '---', (a) => a.sleepTime.sleepingTime.fold(() => '---', (a) => a.toHHhMMm))}',
              style: theme.customTextTheme.textTheme.headline4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TimeIndicator(time: '0h'),
                const TimeIndicator(time: '4h'),
                const TimeIndicator(time: '8h'),
                const TimeIndicator(time: '12h'),
                const TimeIndicator(time: '16h'),
                const TimeIndicator(time: '20h'),
                const TimeIndicator(time: '24h'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                top: 10,
              ),
              child: StepProgressIndicator(
                totalSteps: 24 * 60,
                padding: 0,
                roundedEdges: const Radius.circular(20),
                unselectedColor:
                    theme.customColorTheme.scaffoldBackgroundColorLight,
                selectedColor: sleepDataOption.fold(
                  () => theme.customColorTheme.scaffoldBackgroundColorLight,
                  (a) => a.sleepTimeColor(theme.customColorTheme),
                ),
                currentStep: sleepDataOption.fold(
                  () => 0,
                  (a) => a.sleepTime.sleepingTime.fold(
                    () => 0,
                    (a) => a.inMinutes,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DateTimeSelector(
                        text: sleepDataOption.fold(
                          () => '---',
                          (a) => a.sleepTime.goToBed.fold(
                            () => '---',
                            (a) => DateFormat('dd MMM, HH:mm').format(a),
                          ),
                        ),
                        initialDate: date.subtract(const Duration(days: 1)),
                        firstDate: date.subtract(const Duration(days: 1)),
                        lastDate: date,
                        initialTime: const TimeOfDay(hour: 22, minute: 0),
                        onComplete: (dateTime) =>
                            context.read<SleepCubit>().updateGoToBed(
                                  date,
                                  dateTime,
                                ),
                      ),
                    ),
                    Expanded(
                      child: DateTimeSelector(
                        text: sleepDataOption.fold(
                          () => '---',
                          (a) => a.sleepTime.wakeUp.fold(
                            () => '---',
                            (a) => DateFormat('dd MMM, HH:mm').format(a),
                          ),
                        ),
                        initialDate: date,
                        firstDate: date.subtract(const Duration(days: 1)),
                        lastDate: date,
                        initialTime: const TimeOfDay(hour: 7, minute: 0),
                        onComplete: (dateTime) =>
                            context.read<SleepCubit>().updateWakeUp(
                                  date,
                                  dateTime,
                                ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
