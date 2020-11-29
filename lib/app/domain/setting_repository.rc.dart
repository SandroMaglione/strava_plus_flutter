// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, unused_import, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

import 'package:meta/meta.dart';

// **************************************************************************
// RepoCaseGenerator
// **************************************************************************

import 'package:mobile_polimi_project/app/domain/entities/setting_parameters.dart';
import 'package:mobile_polimi_project/app/domain/setting_repository.dart';

class GetLocalSettingRepo {
  final SettingRepository settingRepository;

  const GetLocalSettingRepo({
    @required this.settingRepository,
  });

  Future<SettingParameters> call() async {
    return settingRepository.getLocalSetting();
  }
}

class StoreLocalSettingRepo {
  final SettingRepository settingRepository;

  const StoreLocalSettingRepo({
    @required this.settingRepository,
  });

  Future<void> call(StoreLocalSettingRepoParams params) async {
    return settingRepository.storeLocalSetting(
      params.settingParameters,
    );
  }
}

class StoreLocalSettingRepoParams {
  final SettingParameters settingParameters;

  const StoreLocalSettingRepoParams({
    @required this.settingParameters,
  });
}

class ClearLocalSettingRepo {
  final SettingRepository settingRepository;

  const ClearLocalSettingRepo({
    @required this.settingRepository,
  });

  Future<void> call() async {
    return settingRepository.clearLocalSetting();
  }
}
