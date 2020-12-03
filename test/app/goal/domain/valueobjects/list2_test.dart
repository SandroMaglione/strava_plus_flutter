import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/athlete/domain/valueobjects/list2.dart';

void main() {
  const element0 = 1;
  const element1 = 2;
  final validList = List2<int>([element0, element1]);
  final invalidList = List2<int>([element0, element1, 3]);

  test('should assert error when List2 passed null', () async {
    expect(() => List2<dynamic>(null), throwsAssertionError);
  });

  test('should initialize None option when list has not length 2', () async {
    expect(invalidList.list, none<int>());
  });

  test('should initialize Some option when list has length 2', () async {
    expect(validList.list, some(ilist([1, 2])));
  });

  group('first', () {
    test('should return Some containing the first element of the list',
        () async {
      expect(validList.first, some(element0));
    });

    test('should return None when List2 is not valid', () async {
      expect(invalidList.first, none<int>());
    });
  });

  group('second', () {
    test('should return Some containing the second element of the list',
        () async {
      expect(validList.second, some(element1));
    });

    test('should return None when List2 is not valid', () async {
      expect(invalidList.second, none<int>());
    });
  });
}
