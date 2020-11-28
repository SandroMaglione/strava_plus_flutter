import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Photos extends Equatable {
  const Photos();

  Option<String> get primaryOption;
  int get count;

  @override
  List<Object> get props => [
        primaryOption,
        count,
      ];
}
