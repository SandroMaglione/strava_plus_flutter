import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/app/data/datasources/local/setting_local_data_source.dart';
import 'package:mobile_polimi_project/app/domain/entities/setting_parameters.dart';
import 'package:mobile_polimi_project/app/domain/setting_repository.dart';

@Injectable(as: SettingRepository)
class SettingRepositoryImpl extends SettingRepository {
  final SettingLocalDataSource settingLocalDataSource;

  SettingRepositoryImpl({
    @required this.settingLocalDataSource,
  });

  @override
  Future<void> clearLocalSetting() async =>
      settingLocalDataSource.clearLocalSetting();

  @override
  Future<SettingParameters> getLocalSetting() async =>
      settingLocalDataSource.getLocalSetting();

  @override
  Future<void> storeLocalSetting(SettingParameters settingParameters) =>
      settingLocalDataSource.storeLocalSetting(settingParameters.toModel);
}
