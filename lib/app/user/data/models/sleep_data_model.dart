import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/sleep_time.dart';

part 'sleep_data_model.g.dart';

@JsonSerializable()
class SleepDataModel extends SleepData {
  final DateTime goToBed;
  final DateTime wakeUp;

  const SleepDataModel({
    @required this.goToBed,
    @required this.wakeUp,
  });

  const SleepDataModel.wakeUp({
    @required this.wakeUp,
  }) : goToBed = null;

  const SleepDataModel.goToBed({
    @required this.goToBed,
  }) : wakeUp = null;

  factory SleepDataModel.fromJson(Map<String, dynamic> json) =>
      _$SleepDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$SleepDataModelToJson(this);

  @override
  SleepTime get sleepTime => SleepTime(goToBed, wakeUp);

  @override
  SleepDataModel get toModel => SleepDataModel(
        wakeUp: wakeUp,
        goToBed: goToBed,
      );

  @override
  SleepData copyWith({
    DateTime wakeUpNew,
    DateTime goToBedNew,
  }) =>
      SleepDataModel(
        wakeUp: wakeUpNew ?? wakeUp,
        goToBed: goToBedNew ?? goToBed,
      );
}
