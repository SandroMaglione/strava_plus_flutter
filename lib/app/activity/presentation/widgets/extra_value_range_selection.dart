import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class ExtraValueRangeSelection extends StatelessWidget {
  final RangeValue rangeValue;
  final void Function(int) updateValue;

  const ExtraValueRangeSelection({
    @required this.rangeValue,
    @required this.updateValue,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: Column(
          children: [
            Text(
              rangeValue.name,
              style: theme.customTextTheme.textTheme.headline5,
            ),
            const Divider(),
            SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...rangeValue.messagesKeys.map(
                    (e) {
                      final isSelected = rangeValue.isSelected(e);
                      return InkWell(
                        onTap: () => updateValue(e),
                        child: Chip(
                          backgroundColor: isSelected
                              ? theme.customColorTheme.accentColor
                              : theme.customColorTheme.primaryColor,
                          label: Text(
                            rangeValue.messages[e],
                            style:
                                theme.customTextTheme.textTheme.button.copyWith(
                              color: isSelected
                                  ? theme.customColorTheme.primaryColor
                                  : theme.customColorTheme.accentColor,
                              fontWeight: isSelected
                                  ? FontWeight.w900
                                  : FontWeight.w300,
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
