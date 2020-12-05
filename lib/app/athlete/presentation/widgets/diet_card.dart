import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/diet_icon_button.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/time_indicator.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/diet_cubit.dart';

class DietCard extends StatelessWidget {
  final DateTime date;
  final DietData dietData;

  const DietCard({
    @required this.dietData,
    @required this.date,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Text(
                  DateFormat('dd MMMM yyyy').format(date),
                  style: theme.customTextTheme.textTheme.overline,
                ),
                Text(
                  '${dietData.meals} meals',
                  style: theme.customTextTheme.textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TimeIndicator(time: '4am'),
                    const TimeIndicator(time: '8am'),
                    const TimeIndicator(time: '11am'),
                    const TimeIndicator(time: '1pm'),
                    const TimeIndicator(time: '4pm'),
                    const TimeIndicator(time: '8pm'),
                    const TimeIndicator(time: '23pm'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DietIconButton(
                        dietValue: dietData.night,
                        onPressed: (value) =>
                            context.read<DietCubit>().updateNight(date, value),
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
                        onPressed: (value) =>
                            context.read<DietCubit>().updateLunch(date, value),
                      ),
                      DietIconButton(
                        dietValue: dietData.midAfternoon,
                        onPressed: (value) => context
                            .read<DietCubit>()
                            .updateMidAfternoon(date, value),
                      ),
                      DietIconButton(
                        dietValue: dietData.dinner,
                        onPressed: (value) =>
                            context.read<DietCubit>().updateDinner(date, value),
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
        ],
      ),
    );
  }
}
