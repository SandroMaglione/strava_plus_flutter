import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/bool_value.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/chip_selector.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/extra_value_selection.dart';

class ExtraValueBoolSelection extends StatelessWidget {
  final BoolValue boolValue;
  final void Function(bool) updateValue;

  const ExtraValueBoolSelection({
    @required this.boolValue,
    @required this.updateValue,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtraValueSelection(
      name: boolValue.name,
      children: [
        ...[true, false].map(
          (e) => ChipSelector(
            text: boolValue.messages[e],
            onTap: () => updateValue(e),
            isSelected: boolValue.isSelected(e),
          ),
        ),
      ],
    );
  }
}
