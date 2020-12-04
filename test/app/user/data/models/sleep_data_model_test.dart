import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'shared_user.dart';

void main() {
  final jsonMap =
      json.decode(fixture("sleep_data_model.json")) as Map<String, dynamic>;

  test('should be of type SleepData', () async {
    expect(SharedUser.sleepDataModel, isA<SleepData>());
  });

  test('should be equals based on wake up and go to bed date times', () async {
    expect(SharedUser.sleepDataModel, SharedUser.sleepDataModelCopy);
  });

  test('should initialize SleepDataModel with correct date times', () async {
    expect(
        SharedUser.sleepDataModel.sleepTime.goToBed, some(SharedUser.goToBed));
    expect(SharedUser.sleepDataModel.sleepTime.wakeUp, some(SharedUser.wakeUp));
  });

  test('should initialize SleepDataModel only with wake up time', () async {
    expect(SharedUser.sleepDataModelWakeUp.sleepTime.goToBed, isA<None>());
    expect(SharedUser.sleepDataModelWakeUp.sleepTime.wakeUp,
        some(SharedUser.wakeUp));
  });

  test('should initialize SleepDataModel only with go to bed time', () async {
    expect(SharedUser.sleepDataModelGoToBed.sleepTime.wakeUp, isA<None>());
    expect(SharedUser.sleepDataModelGoToBed.sleepTime.goToBed,
        some(SharedUser.goToBed));
  });

  group('copyWith', () {
    test('should change wake up time correctly', () async {
      expect(
          SharedUser.sleepDataModel
              .copyWith(wakeUpNew: SharedUser.wakeUpCopyWith)
              .sleepTime
              .wakeUp,
          some(SharedUser.wakeUpCopyWith));
    });

    test('should change go to bed time correctly', () async {
      expect(
          SharedUser.sleepDataModel
              .copyWith(goToBedNew: SharedUser.goToBedCopyWith)
              .sleepTime
              .goToBed,
          some(SharedUser.goToBedCopyWith));
    });

    test('should change wake up time and turn the SleepTime invalid', () async {
      expect(SharedUser.sleepDataModel.sleepTime.sleepOption, isA<Some>());
      expect(
          SharedUser.sleepDataModel
              .copyWith(wakeUpNew: SharedUser.wakeUpCopyWithToInvalid)
              .sleepTime
              .sleepOption,
          isA<None>());
    });

    test('should change go to bed time and turn the SleepTime invalid',
        () async {
      expect(SharedUser.sleepDataModel.sleepTime.sleepOption, isA<Some>());
      expect(
          SharedUser.sleepDataModel
              .copyWith(goToBedNew: SharedUser.goToBedCopyWithToInvalid)
              .sleepTime
              .sleepOption,
          isA<None>());
    });
  });

  group('fromJson', () {
    test('should convert correctly from json', () async {
      expect(SleepDataModel.fromJson(jsonMap), SharedUser.sleepDataModel);
    });
  });

  group('toJson', () {
    test('should convert correctly to json', () async {
      expect(SharedUser.sleepDataModel.toJson(), jsonMap);
    });
  });
}
