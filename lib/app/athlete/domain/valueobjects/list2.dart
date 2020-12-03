import 'package:dartz/dartz.dart';

/// List with length required to be 2
class List2<T> {
  final Option<IList<T>> list;

  factory List2(List<T> list) {
    assert(list != null, "[List2]: List cannot be null");
    return List2._(option(list.length == 2, ilist(list)));
  }

  Option<T> get first => list.fold(() => none<T>(), (a) => a.headOption);
  Option<T> get second => list.fold(() => none<T>(),
      (a) => a.tailOption.fold(() => none<T>(), (a) => a.headOption));

  const List2._(this.list);
}
