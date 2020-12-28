import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/date_time_selector.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/horizontal_value_selector.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';

class ChangeWeightDialog extends StatefulWidget {
  final KeyWeightData weightData;
  final void Function(double weight, DateTime dateTime) onConfirm;
  final void Function() onDelete;

  ChangeWeightDialog({
    @required this.weightData,
    @required this.onConfirm,
    @required this.onDelete,
    Key key,
  }) : super(key: key);

  @override
  _ChangeWeightDialogState createState() => _ChangeWeightDialogState();
}

class _ChangeWeightDialogState extends State<ChangeWeightDialog> {
  double weight;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    weight = widget.weightData.value;
    dateTime = widget.weightData.dateTime;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(
        top: 30,
        bottom: 10,
      ),
      actionsPadding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      actions: [
        OutlineButton(
          onPressed: widget.onDelete,
          child: const Text('Delete'),
        ),
        OutlineButton(
          onPressed: () => widget.onConfirm(weight, dateTime),
          child: const Text('Update'),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HorizontalValueSelector(
            height: 84,
            viewportFraction: 0.3,
            selected: weight,
            lastWeight: widget.weightData.value,
            onSelected: (weightValue) => setState(() => weight = weightValue),
          ),
          const Divider(),
          DateTimeSelector(
            text: DateFormat('dd MMM, HH:mm').format(dateTime),
            initialDate: widget.weightData.dateTime,
            firstDate:
                widget.weightData.dateTime.subtract(const Duration(days: 365)),
            lastDate: DateTime.now(),
            initialTime: TimeOfDay(
              hour: widget.weightData.dateTime.hour,
              minute: widget.weightData.dateTime.minute,
            ),
            onComplete: (dateTimeValue) =>
                setState(() => dateTime = dateTimeValue),
          ),
        ],
      ),
    );
  }
}
