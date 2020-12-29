import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/diet_card.dart';
import 'package:mobile_polimi_project/app/user/data/models/diet_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/diet_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class DietView extends StatelessWidget {
  const DietView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietCubit, AsyncState<dartz.IMap<DateTime, DietData>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(child: const CircularProgressIndicator()),
        error: (failure) => Center(
          child: Text(failure.errorMessage),
        ),
        success: (dietList) {
          final today = DateTime.now();

          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) {
              final date = DateTime(today.year, today.month, today.day, 0, 0, 0)
                  .subtract(Duration(days: index));
              return DietCard(
                date: date,
                dietData: dietList.get(date).getOrElse(
                      () => const DietDataModel(),
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
