import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/water_value.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/water_cubit.dart';

class WaterCard extends StatelessWidget {
  final DateTime date;
  final WaterData waterData;

  const WaterCard({
    @required this.waterData,
    @required this.date,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        child: Column(
          children: [
            Text(
              DateFormat('dd MMMM yyyy').format(date),
              style: theme.customTextTheme.textTheme.overline,
            ),
            Text(
              '${waterData.water.water.fold(() => '---', (a) => "${a}L")}',
              style: theme.customTextTheme.textTheme.headline4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final value = index * WaterValue.interval;
                  final isSelected =
                      value <= waterData.water.water.getOrElse(() => -1);
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () => context.read<WaterCubit>().updateWaterData(
                            date,
                            value,
                          ),
                      child: CircleAvatar(
                        backgroundColor: isSelected
                            ? theme.customColorTheme.primaryColor
                            : theme
                                .customColorTheme.scaffoldBackgroundColorLight,
                        radius: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${value}L',
                              style: theme.customTextTheme.textTheme.caption
                                  .copyWith(
                                color: isSelected
                                    ? theme.customColorTheme
                                        .scaffoldBackgroundColorLight
                                    : theme.customColorTheme.primaryColorDark,
                              ),
                            ),
                            Icon(
                              FontAwesomeIcons.tint,
                              size: 10,
                              color: isSelected
                                  ? theme.customColorTheme
                                      .scaffoldBackgroundColorLight
                                  : theme.customColorTheme.primaryColorDark,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
