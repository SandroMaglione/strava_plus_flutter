import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/data/models/water_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/water_value.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/water_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class WaterView extends StatelessWidget {
  const WaterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

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
              final waterData =
                  waterList.get(date).getOrElse(() => const WaterDataModel());
              return Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 25,
                  ),
                  child: Column(
                    children: [
                      Text(DateFormat('dd MMMM yyyy').format(date)),
                      Text(
                          '${waterData.water.water.fold(() => '---', (a) => "${a}L")}'),
                      const Divider(),
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final value = index * WaterValue.interval;
                            return SizedBox(
                              width: 80,
                              child: RaisedButton(
                                color: value <=
                                        waterData.water.water
                                            .getOrElse(() => -1)
                                    ? theme.customColorTheme.accentColor
                                    : theme.customColorTheme.primaryColor,
                                onPressed: () =>
                                    context.read<WaterCubit>().updateWaterData(
                                          date,
                                          value,
                                        ),
                                child: Text('${value}L'),
                              ),
                            );
                          },
                        ),
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
}
