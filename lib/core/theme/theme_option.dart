import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'theme_option.freezed.dart';
part 'theme_option.g.dart';

/// Colors and text themes of the app
@freezed
abstract class ThemeOption with _$ThemeOption {
  /// Default theme light
  const factory ThemeOption.theme_light() = ThemeLightThemeOption;

  /// Dark mode
  const factory ThemeOption.theme_dark() = ThemeDarkThemeOption;

  /// Json serialization generation for [ThemeOption]
  factory ThemeOption.fromJson(Map<String, dynamic> json) =>
      _$ThemeOptionFromJson(json);
}
