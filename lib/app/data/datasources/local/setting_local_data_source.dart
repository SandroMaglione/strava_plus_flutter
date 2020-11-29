import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/data/models/setting_parameters_model.dart';

abstract class SettingLocalDataSource {
  static const String SETTING_KEY = 'SETTING_KEY';

  Future<SettingParametersModel> getLocalSetting();
  Future<void> storeLocalSetting(SettingParametersModel settingParametersModel);
  Future<void> clearLocalSetting();
}

@Injectable(as: SettingLocalDataSource)
class SettingLocalDataSourceImpl implements SettingLocalDataSource {
  final FlutterSecureStorage flutterSecureStorage;

  SettingLocalDataSourceImpl({
    @required this.flutterSecureStorage,
  });

  @override
  Future<void> clearLocalSetting() =>
      flutterSecureStorage.delete(key: SettingLocalDataSource.SETTING_KEY);

  @override
  Future<SettingParametersModel> getLocalSetting() async {
    final jsonSetting = await flutterSecureStorage.read(
      key: SettingLocalDataSource.SETTING_KEY,
    );

    if (jsonSetting == null) {
      return Future.value(SettingParametersModel.defaultSetting);
    } else {
      return SettingParametersModel.fromJson(
          jsonDecode(jsonSetting) as Map<String, dynamic>);
    }
  }

  @override
  Future<void> storeLocalSetting(
          SettingParametersModel settingParametersModel) =>
      flutterSecureStorage.write(
        key: SettingLocalDataSource.SETTING_KEY,
        value: jsonEncode(
          settingParametersModel.toJson(),
        ),
      );
}
