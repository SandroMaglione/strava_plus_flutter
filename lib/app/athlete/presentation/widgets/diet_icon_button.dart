import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    final isSelected = dietValue.valueOption.getOrElse(() => false);

    return InkWell(
      onTap: () => onPressed(!isSelected),
      child: Icon(
        FontAwesomeIcons.drumstickBite,
        color: isSelected
            ? theme.customColorTheme.primaryColor
            : theme.customColorTheme.scaffoldBackgroundColorDark,
      ),
    );
  }
}
