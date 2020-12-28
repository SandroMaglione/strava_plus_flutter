import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class HorizontalValueSelector extends HookWidget {
  final double height;
  final double viewportFraction;
  final double lastWeight;
  final double selected;
  final void Function(double) onSelected;

  const HorizontalValueSelector({
    @required this.lastWeight,
    @required this.onSelected,
    @required this.selected,
    this.height = 65,
    this.viewportFraction = 0.20,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;
    final controller = usePageController(
      initialPage: (lastWeight - 30).toInt() * 10 +
          ((lastWeight - lastWeight.toInt()) * 10).toInt(),
      viewportFraction: viewportFraction,
    );

    return SizedBox(
      height: height,
      width: double.maxFinite,
      child: PageView.builder(
        controller: controller,
        pageSnapping: false,
        itemBuilder: (context, index) {
          final weightValue = (index * 0.1) + 30;
          final isSelected = selected == weightValue;

          return InkWell(
            onTap: () => onSelected(weightValue),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: isSelected
                  ? theme.customColorTheme.primaryColorDark
                  : theme.customColorTheme.scaffoldBackgroundColorLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${weightValue.toStringAsFixed(1)}',
                    style: theme.customTextTheme.textTheme.button.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? theme.customColorTheme.scaffoldBackgroundColorDark
                          : theme.customColorTheme.primaryColorDark,
                    ),
                  ),
                  Text(
                    'kg',
                    style: theme.customTextTheme.textTheme.overline.copyWith(
                      color: isSelected
                          ? theme.customColorTheme.scaffoldBackgroundColorDark
                          : theme.customColorTheme.primaryColorDark,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
