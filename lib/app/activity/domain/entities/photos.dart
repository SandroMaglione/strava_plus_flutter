import 'package:equatable/equatable.dart';

abstract class Photos extends Equatable {
  const Photos();

  String get primary;
  int get count;

  @override
  List<Object> get props => [
        primary,
        count,
      ];
}
