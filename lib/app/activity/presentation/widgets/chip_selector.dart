import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class ChipSelector extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final bool isSelected;

  const ChipSelector({
    @required this.text,
    @required this.onTap,
    @required this.isSelected,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: InkWell(
        onTap: onTap,
        child: Chip(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          backgroundColor: isSelected
              ? theme.customColorTheme.primaryColor
              : theme.customColorTheme.scaffoldBackgroundColor,
          label: Text(
            text,
            style: theme.customTextTheme.textTheme.button.copyWith(
              color: isSelected
                  ? theme.customColorTheme.scaffoldBackgroundColorDark
                  : theme.customColorTheme.primaryColorDark,
              fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
