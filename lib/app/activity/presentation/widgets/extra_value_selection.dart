import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class ExtraValueSelection extends StatelessWidget {
  final String name;
  final List<Widget> children;

  const ExtraValueSelection({
    @required this.name,
    @required this.children,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.maxFinite,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Text(
                  name,
                  style: theme.customTextTheme.textTheme.caption,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: children),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
