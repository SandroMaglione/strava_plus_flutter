import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/sleep_time.dart';
import 'package:mobile_polimi_project/core/theme/color_theme.dart';

abstract class SleepData extends Equatable {
  const SleepData();

  SleepTime get sleepTime;
  SleepDataModel get toModel;
  SleepData copyWith({
    DateTime wakeUpNew,
    DateTime goToBedNew,
  });
  Color sleepTimeColor(CustomColorTheme colorTheme) =>
      sleepTime.sleepingTime.fold(
        () => colorTheme.scaffoldBackgroundColorDark,
        (a) => a.inHours < 5
            ? colorTheme.errorColor
            : a.inHours > 9
                ? colorTheme.primaryColorDark
                : colorTheme.primaryColorLight,
      );

  @override
  List<Object> get props => [sleepTime];
}
