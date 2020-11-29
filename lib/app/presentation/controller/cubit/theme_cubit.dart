import 'package:bloc/bloc.dart';
import 'package:mobile_polimi_project/app/data/models/setting_parameters_model.dart';
import 'package:mobile_polimi_project/app/domain/setting_repository.rc.dart';
import 'package:mobile_polimi_project/core/theme/theme_data.dart';
import 'package:mobile_polimi_project/core/theme/theme_option.dart';

class ThemeCubit extends Cubit<CustomAppTheme> {
  final GetLocalSettingRepo _getLocalSettingRepo;
  final StoreLocalSettingRepo _storeLocalSettingRepo;

  ThemeCubit(this._getLocalSettingRepo, this._storeLocalSettingRepo)
      : super(CustomAppTheme.lightTheme) {
    _init();
  }

  Future<void> _init() async => emit(
        CustomAppTheme.getCustomAppTheme(
          (await _getLocalSettingRepo()).themeOption,
        ),
      );

  Future<void> changeTheme() async {
    final newTheme = state.themeOption is ThemeLightThemeOption
        ? CustomAppTheme.darkTheme
        : CustomAppTheme.lightTheme;

    emit(newTheme);
    _storeLocalSettingRepo(
      StoreLocalSettingRepoParams(
        settingParameters: SettingParametersModel(
          themeOption: newTheme.themeOption,
        ),
      ),
    );
  }
}
