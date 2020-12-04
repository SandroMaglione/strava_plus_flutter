import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

abstract class UserData<T> extends Equatable {
  const UserData();

  DateTime get dateTime;
  T get value;

  String get dateTimeFormat =>
      DateFormat("dd MMM yyyy, HH:mm:ss").format(dateTime);

  @override
  List<Object> get props => [
        dateTime,
        value,
      ];
}
