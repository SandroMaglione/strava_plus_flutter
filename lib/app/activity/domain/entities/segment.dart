import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';
import 'package:mobile_polimi_project/core/enums/activity_type.dart';

abstract class Segment extends Equatable {
  const Segment();

  int get id;
  int get resourceState;
  String get name;
  ActivityType get activityType;
  double get distance;
  double get averageGrade;
  double get maximumGrade;
  double get elevationHigh;
  double get elevationLow;
  List2<double> get startLatlng;
  List2<double> get endLatlng;
  int get climbCategory;
  String get city;
  String get state;
  String get country;
  bool get private;
  bool get hazardous;
  bool get starred;

  @override
  List<Object> get props => [id];
}
