import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/selection_value.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class SelectionValueLabel extends StatelessWidget {
  final SelectionValue selectionValue;

  const SelectionValueLabel({
    @required this.selectionValue,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${selectionValue.name}: ',
            style: theme.customTextTheme.textTheme.caption,
          ),
          Text(
            selectionValue.label,
            style: theme.customTextTheme.textTheme.caption.copyWith(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
