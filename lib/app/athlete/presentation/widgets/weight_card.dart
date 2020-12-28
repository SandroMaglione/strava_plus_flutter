import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/change_weight_dialog.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';
import 'package:mobile_polimi_project/core/extensions/num_extension.dart';
import 'package:auto_route/auto_route.dart';

class WeightCard extends StatelessWidget {
  final int index;
  final KeyWeightData weightData;
  final KeyWeightData previousWeightData;

  const WeightCard({
    @required this.index,
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
      child: InkWell(
        onTap: () => _changeWeight(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25,
          ),
          child: Column(
            children: [
              Text(
                DateFormat('dd MMMM yyyy, HH:mm:ss')
                    .format(weightData.dateTime),
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
      ),
    );
  }

  void _changeWeight(BuildContext context) => showDialog<void>(
        context: context,
        builder: (ctx) => ChangeWeightDialog(
          weightData: weightData,
          onConfirm: (weight, dateTime) {
            context.read<WeightCubit>().changeWeight(
                  index: index,
                  key: weightData.index,
                  weight: weight,
                  dateTime: dateTime,
                );
            ctx.navigator.pop();
          },
          onDelete: () {
            context.read<WeightCubit>().deleteWeight(weightData.index);
            ctx.navigator.pop();
          },
        ),
      );
}
