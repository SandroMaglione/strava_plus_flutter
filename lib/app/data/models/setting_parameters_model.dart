import 'package:mobile_polimi_project/app/domain/entities/setting_parameters.dart';
import 'package:mobile_polimi_project/core/theme/theme_option.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'setting_parameters_model.g.dart';

@JsonSerializable()
class SettingParametersModel extends SettingParameters {
  @override
  final ThemeOption themeOption;

  const SettingParametersModel({
    @required this.themeOption,
  });

  factory SettingParametersModel.fromJson(Map<String, dynamic> json) =>
      _$SettingParametersModelFromJson(json);
  Map<String, dynamic> toJson() => _$SettingParametersModelToJson(this);

  static SettingParametersModel get defaultSetting =>
      const SettingParametersModel(
        themeOption: const ThemeOption.theme_light(),
      );

  @override
  SettingParametersModel get toModel => SettingParametersModel(
        themeOption: themeOption,
      );
}
