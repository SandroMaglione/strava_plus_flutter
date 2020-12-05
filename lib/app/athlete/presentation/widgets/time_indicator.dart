import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class TimeIndicator extends StatelessWidget {
  final String time;

  const TimeIndicator({
    @required this.time,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Column(
      children: [
        Text(
          time,
          style: theme.customTextTheme.textTheme.overline,
        ),
        const Icon(FontAwesomeIcons.caretDown, size: 10),
      ],
    );
  }
}
