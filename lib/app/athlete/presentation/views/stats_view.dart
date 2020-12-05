import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class StatsView extends StatelessWidget {
  const StatsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return BlocBuilder<SleepCubit, AsyncState<dartz.IMap<DateTime, SleepData>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(child: const CircularProgressIndicator()),
        error: (failure) => Center(
          child: Text(failure.errorMessage),
        ),
        success: (sleepList) {
          final today = DateTime.now();

          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) {
              final date = DateTime(today.year, today.month, today.day, 0, 0, 0)
                  .subtract(Duration(days: index));
              final sleepData = sleepList.get(date);
              return Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 25,
                  ),
                  child: Column(
                    children: [
                      Text(DateFormat('dd MMMM yyyy').format(date)),
                      const Divider(),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlineButton(
                                onPressed: () => _selectDateTime(
                                  context,
                                  initialDate:
                                      date.subtract(const Duration(days: 1)),
                                  firstDate:
                                      date.subtract(const Duration(days: 1)),
                                  lastDate: date,
                                  initialTime:
                                      const TimeOfDay(hour: 22, minute: 0),
                                  onComplete: (dateTime) =>
                                      context.read<SleepCubit>().updateGoToBed(
                                            date,
                                            dateTime,
                                          ),
                                ),
                                child: Text(
                                  sleepData.fold(
                                    () => '---',
                                    (a) => a.sleepTime.goToBed.fold(
                                      () => '---',
                                      (a) =>
                                          DateFormat('dd MMM, HH:mm').format(a),
                                    ),
                                  ),
                                ),
                              ),
                              OutlineButton(
                                onPressed: () => _selectDateTime(
                                  context,
                                  initialDate: date,
                                  firstDate:
                                      date.subtract(const Duration(days: 1)),
                                  lastDate: date,
                                  initialTime:
                                      const TimeOfDay(hour: 7, minute: 0),
                                  onComplete: (dateTime) =>
                                      context.read<SleepCubit>().updateWakeUp(
                                            date,
                                            dateTime,
                                          ),
                                ),
                                child: Text(
                                  sleepData.fold(
                                    () => '---',
                                    (a) => a.sleepTime.wakeUp.fold(
                                      () => '---',
                                      (a) =>
                                          DateFormat('dd MMM, HH:mm').format(a),
                                    ),
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
            },
          );
        },
      ),
    );
  }

  Future<void> _selectDateTime(
    BuildContext context, {
    @required DateTime initialDate,
    @required DateTime firstDate,
    @required DateTime lastDate,
    @required TimeOfDay initialTime,
    @required void Function(DateTime) onComplete,
  }) async =>
      showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
      ).then(
        (dateSelected) {
          if (dateSelected != null) {
            return showTimePicker(
              context: context,
              initialTime: initialTime,
            ).then(
              (timeSelected) {
                if (timeSelected != null) {
                  onComplete(
                    DateTime(
                      dateSelected.year,
                      dateSelected.month,
                      dateSelected.day,
                      timeSelected.hour,
                      timeSelected.minute,
                    ),
                  );
                }
              },
            );
          }
        },
      );
}
