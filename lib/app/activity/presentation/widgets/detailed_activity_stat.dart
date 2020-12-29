import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class DetailedActivityStat extends StatelessWidget {
  final String label;
  final String value;

  const DetailedActivityStat({
    @required this.label,
    @required this.value,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: theme.customTextTheme.textTheme.caption,
        ),
        Text(
          value,
          style: theme.customTextTheme.textTheme.button,
        ),
      ],
    );
  }
}
