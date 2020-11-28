import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Trend extends Equatable {
  const Trend();

  IList<double> get speedsList;
  int get currentActivityIndex;
  double get minSpeed;
  double get midSpeed;
  double get maxSpeed;
  int get direction;

  @override
  List<Object> get props => [
        speedsList,
        currentActivityIndex,
        minSpeed,
        midSpeed,
        maxSpeed,
        direction,
      ];
}
