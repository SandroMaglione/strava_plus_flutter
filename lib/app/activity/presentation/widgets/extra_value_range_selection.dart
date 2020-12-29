import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/app/activity/domain/valueobjects/range_value.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/chip_selector.dart';
import 'package:mobile_polimi_project/app/activity/presentation/widgets/extra_value_selection.dart';

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
    return ExtraValueSelection(
      name: rangeValue.name,
      children: [
        ...rangeValue.messagesKeys.map(
          (e) => ChipSelector(
            text: rangeValue.messages[e],
            onTap: () => updateValue(e),
            isSelected: rangeValue.isSelected(e),
          ),
        ),
      ],
    );
  }
}
