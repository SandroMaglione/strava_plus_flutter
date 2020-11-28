import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/complex_activity.dart';
import 'package:mobile_polimi_project/core/enums/goal_operation.dart';

abstract class ComposeActivity extends Equatable implements ComplexActivity {
  const ComposeActivity();

  ComplexActivity get activity1;
  GoalOperation get operation;
  ComplexActivity get activity2;

  @override
  List<Object> get props => [
        activity1,
        operation,
        activity2,
      ];
}
