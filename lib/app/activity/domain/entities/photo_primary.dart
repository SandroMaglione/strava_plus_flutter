import 'package:equatable/equatable.dart';

abstract class PhotoPrimary extends Equatable {
  const PhotoPrimary();

  int get id;
  String get uniqueId;
  Map<String, String> get urls;
  int get source;

  @override
  List<Object> get props => [uniqueId];
}
