import 'package:equatable/equatable.dart';

abstract class Data extends Equatable {
  /// Define const constructor to instantiate constant objects in the model class
  const Data();

  /// Some parameters are shared with the model
  int get param1;
  String get param2;

  /// Some parameters are formatted
  /// They are not part of the model class but
  /// are formatted to be displayed in the presentation layer
  String get dateFormatted;

  @override
  List<Object> get props => [
        param1,
        param2,
      ];
}
