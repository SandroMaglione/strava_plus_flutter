import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photo_primary.dart';

abstract class Photos extends Equatable {
  const Photos();

  Option<PhotoPrimary> get primaryOption;
  int get count;

  @override
  List<Object> get props => [
        primaryOption,
        count,
      ];
}
