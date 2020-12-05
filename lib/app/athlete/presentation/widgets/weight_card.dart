import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/core/extensions/num_extension.dart';

class WeightCard extends StatelessWidget {
  final WeightData weightData;
  final WeightData previousWeightData;

  const WeightCard({
    @required this.weightData,
    this.previousWeightData,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;
    final weightDifference = previousWeightData != null
        ? weightData.value - previousWeightData.value
        : 0.0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        child: Column(
          children: [
            Text(
              DateFormat('dd MMMM yyyy, HH:mm:ss').format(weightData.dateTime),
              style: theme.customTextTheme.textTheme.overline,
            ),
            const Divider(),
            Text(
              '${weightData.value.toStringAsFixed(1)}kg',
              style: theme.customTextTheme.textTheme.headline4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              previousWeightData != null
                  ? '${weightDifference.plusMinus}kg'
                  : '---',
              style: theme.customTextTheme.textTheme.subtitle1.copyWith(
                fontWeight: FontWeight.w900,
                color: weightDifference > 0
                    ? theme.customColorTheme.errorColor
                    : weightDifference < 0
                        ? theme.customColorTheme.accentColor
                        : theme.customColorTheme.scaffoldBackgroundColorDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
