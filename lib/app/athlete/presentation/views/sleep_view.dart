import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/sleep_card.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class SleepView extends StatelessWidget {
  const SleepView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              return SleepCard(
                date: date,
                sleepDataOption: sleepList.get(date),
              );
            },
          );
        },
      ),
    );
  }
}
