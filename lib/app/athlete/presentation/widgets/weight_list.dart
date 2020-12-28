import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/horizontal_value_selector.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/weight_card.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';

class WeightList extends StatelessWidget {
  final IList<KeyWeightData> weightList;

  const WeightList({
    @required this.weightList,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lastWeight = weightList.headOption.fold(
      () => 75.0,
      (a) => a.value,
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 35,
            bottom: 20,
          ),
          child: HorizontalValueSelector(
            lastWeight: lastWeight,
            selected: lastWeight,
            onSelected: (weightValue) =>
                context.read<WeightCubit>().updateWeight(weightValue),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: weightList.length(),
            itemBuilder: (context, index) => WeightCard(
              index: index,
              weightData: weightList.toList()[index],
              previousWeightData: index != weightList.length() - 1
                  ? weightList.toList()[index + 1]
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
