import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/valueobjects/sleep_time.dart';

part 'sleep_data_model.g.dart';

@JsonSerializable()
class SleepDataModel extends SleepData {
  final DateTime wakeUp;
  final DateTime goToBed;

  const SleepDataModel({
    @required this.wakeUp,
    @required this.goToBed,
  });

  factory SleepDataModel.fromJson(Map<String, dynamic> json) =>
      _$SleepDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$SleepDataModelToJson(this);

  @override
  SleepTime get sleepTime => SleepTime(goToBed, wakeUp);
}
