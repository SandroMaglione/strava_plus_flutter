import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/sleep_time.dart';

abstract class SleepData extends Equatable {
  const SleepData();

  SleepTime get sleepTime;
  SleepDataModel get toModel;
  SleepData copyWith({
    DateTime wakeUpNew,
    DateTime goToBedNew,
  });

  @override
  List<Object> get props => [sleepTime];
}
