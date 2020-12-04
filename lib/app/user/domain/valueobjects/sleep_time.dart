import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SleepTime extends Equatable {
  final Option<Tuple3<DateTime, DateTime, DateTime>> sleepOption;

  Option<DateTime> get date =>
      sleepOption.fold(() => none(), (a) => optionOf(a.value1));

  Option<DateTime> get goToBed =>
      sleepOption.fold(() => none(), (a) => optionOf(a.value2));

  Option<DateTime> get wakeUp =>
      sleepOption.fold(() => none(), (a) => optionOf(a.value3));

  factory SleepTime(DateTime goToBed, DateTime wakeUp) => SleepTime._(
        option(wakeUp.isAfter(goToBed), tuple3(wakeUp, goToBed, wakeUp)),
      );

  const SleepTime._(this.sleepOption);

  @override
  List<Object> get props => [sleepOption];
}
