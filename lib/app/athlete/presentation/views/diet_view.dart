import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/diet_icon_button.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/data/models/diet_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/diet_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class DietView extends StatelessWidget {
  const DietView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

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
              final dietData =
                  dietList.get(date).getOrElse(() => const DietDataModel());
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            DietIconButton(
                              dietValue: dietData.night,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateNight(date, value),
                            ),
                            DietIconButton(
                              dietValue: dietData.breakfast,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateBreakfast(date, value),
                            ),
                            DietIconButton(
                              dietValue: dietData.midMorning,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateMidMorning(date, value),
                            ),
                            DietIconButton(
                              dietValue: dietData.lunch,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateLunch(date, value),
                            ),
                            DietIconButton(
                              dietValue: dietData.midAfternoon,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateMidAfternoon(date, value),
                            ),
                            DietIconButton(
                              dietValue: dietData.dinner,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateDinner(date, value),
                            ),
                            DietIconButton(
                              dietValue: dietData.afterDinner,
                              onPressed: (value) => context
                                  .read<DietCubit>()
                                  .updateAfterDinner(date, value),
                            ),
                          ],
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
