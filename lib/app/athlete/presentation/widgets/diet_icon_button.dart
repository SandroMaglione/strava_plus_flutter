import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/diet_value.dart';

class DietIconButton extends StatelessWidget {
  final DietValue dietValue;
  final void Function(bool) onPressed;

  const DietIconButton({
    @required this.dietValue,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;
    final currentValue = dietValue.valueOption.getOrElse(() => false);

    return IconButton(
      color: currentValue
          ? theme.customColorTheme.accentColor
          : theme.customColorTheme.primaryColor,
      icon: const Icon(Icons.set_meal_outlined),
      onPressed: () => onPressed(!currentValue),
    );
  }
}
