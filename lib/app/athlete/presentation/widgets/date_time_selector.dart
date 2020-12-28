import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';

class DateTimeSelector extends StatelessWidget {
  final String text;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final TimeOfDay initialTime;
  final void Function(DateTime dateTime) onComplete;

  const DateTimeSelector({
    @required this.text,
    @required this.initialDate,
    @required this.firstDate,
    @required this.lastDate,
    @required this.initialTime,
    @required this.onComplete,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return OutlineButton(
      shape: ContinuousRectangleBorder(
        side: BorderSide(
          color: theme.customColorTheme.primaryColorDark,
        ),
      ),
      onPressed: () => _selectDateTime(context),
      child: Text(text),
    );
  }

  Future<void> _selectDateTime(BuildContext context) async => showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
      ).then(
        (dateSelected) {
          if (dateSelected != null) {
            return showTimePicker(
              context: context,
              initialTime: initialTime,
            ).then(
              (timeSelected) {
                if (timeSelected != null) {
                  onComplete(
                    DateTime(
                      dateSelected.year,
                      dateSelected.month,
                      dateSelected.day,
                      timeSelected.hour,
                      timeSelected.minute,
                    ),
                  );
                }
              },
            );
          }
        },
      );
}
