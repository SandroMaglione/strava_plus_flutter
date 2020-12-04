import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SleepTime extends Equatable {
  final Option<Tuple2<DateTime, DateTime>> sleepOption;

  Option<DateTime> get goToBed =>
      sleepOption.fold(() => none(), (a) => optionOf(a.value1));

  Option<DateTime> get wakeUp =>
      sleepOption.fold(() => none(), (a) => optionOf(a.value2));

  factory SleepTime(DateTime goToBed, DateTime wakeUp) => SleepTime._(
        option(wakeUp == null || goToBed == null || wakeUp.isAfter(goToBed),
            tuple2(goToBed, wakeUp)),
      );

  const SleepTime._(this.sleepOption);

  @override
  List<Object> get props => [sleepOption];
}
