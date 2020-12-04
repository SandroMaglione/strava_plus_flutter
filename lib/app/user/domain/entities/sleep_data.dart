import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/sleep_time.dart';

abstract class SleepData extends Equatable {
  const SleepData();

  SleepTime get sleepTime;

  @override
  List<Object> get props => [sleepTime];
}
