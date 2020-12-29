import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/water_card.dart';
import 'package:mobile_polimi_project/app/user/data/models/water_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/water_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class WaterView extends StatelessWidget {
  const WaterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterCubit, AsyncState<dartz.IMap<DateTime, WaterData>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(child: const CircularProgressIndicator()),
        error: (failure) => Center(
          child: Text(failure.errorMessage),
        ),
        success: (waterList) {
          final today = DateTime.now();

          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) {
              final date = DateTime(today.year, today.month, today.day, 0, 0, 0)
                  .subtract(Duration(days: index));
              return WaterCard(
                date: date,
                waterData: waterList.get(date).getOrElse(
                      () => const WaterDataModel(),
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
