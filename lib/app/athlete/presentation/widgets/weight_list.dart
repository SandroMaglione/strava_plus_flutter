import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/weight_card.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';

class WeightList extends HookWidget {
  final IList<WeightData> weightList;

  const WeightList({
    @required this.weightList,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;
    final lastWeight =
        weightList.reverse().headOption.fold(() => 75, (a) => a.value);
    final controller = usePageController(
      initialPage: (lastWeight - 30).toInt() * 10 +
          ((lastWeight - lastWeight.toInt()) * 10).toInt(),
      viewportFraction: 0.20,
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 35,
            bottom: 20,
          ),
          child: SizedBox(
            height: 65,
            child: PageView.builder(
              controller: controller,
              pageSnapping: false,
              itemBuilder: (context, index) {
                final weightValue = (index * 0.1) + 30;
                return InkWell(
                  onTap: () =>
                      context.read<WeightCubit>().updateWeight(weightValue),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor:
                        theme.customColorTheme.scaffoldBackgroundColorLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${weightValue.toStringAsFixed(1)}',
                          style:
                              theme.customTextTheme.textTheme.button.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'kg',
                          style: theme.customTextTheme.textTheme.overline,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: weightList.length(),
            itemBuilder: (context, index) => WeightCard(
              weightData: weightList.reverse().toList()[index],
              previousWeightData:
                  index != 0 ? weightList.reverse().toList()[index - 1] : null,
            ),
          ),
        ),
      ],
    );
  }
}
