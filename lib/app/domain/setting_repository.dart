import 'package:mobile_polimi_project/app/domain/entities/setting_parameters.dart';
import 'package:repo_case/repo_case.dart';

@repoCase
abstract class SettingRepository {
  Future<SettingParameters> getLocalSetting();
  Future<void> storeLocalSetting(SettingParameters settingParameters);
  Future<void> clearLocalSetting();
}
