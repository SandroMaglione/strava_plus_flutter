import 'package:dartz/dartz.dart';

/// Name of the goal, with length greater than 4
class GoalName {
  final Option<String> name;

  factory GoalName(String name) {
    assert(name != null, "[GoalName]: Name cannot be null");
    return GoalName._(option(name.length >= 4, name));
  }

  const GoalName._(this.name);
}
