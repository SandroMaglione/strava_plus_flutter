import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/activity/complex_activity.dart';
import 'package:mobile_polimi_project/core/enums/activity_id.dart';

abstract class DataActivity extends Equatable implements ComplexActivity {
  const DataActivity();

  ActivityId get activityId;

  @override
  List<Object> get props => [activityId];
}
