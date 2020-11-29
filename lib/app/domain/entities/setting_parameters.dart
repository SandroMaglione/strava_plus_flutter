import 'package:equatable/equatable.dart';
import 'package:mobile_polimi_project/app/data/models/setting_parameters_model.dart';
import 'package:mobile_polimi_project/core/theme/theme_option.dart';

abstract class SettingParameters extends Equatable {
  const SettingParameters();

  ThemeOption get themeOption;

  SettingParametersModel get toModel;

  @override
  List<Object> get props => [
        themeOption,
      ];
}
