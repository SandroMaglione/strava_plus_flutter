import 'package:flutter/material.dart';

/// Abstract class containing all the possible colors in the app theme
abstract class CustomColorTheme {
  const CustomColorTheme();

  /// Default white color
  Color get white => Colors.white;

  /// Default black color
  Color get black => Colors.black;

  /// Primary color regular
  Color get primaryColor;

  /// Primary color light
  Color get primaryColorLight;

  /// Primary color extra light
  Color get primaryColorExtraLight;

  /// Primary color dark
  Color get primaryColorDark;

  /// Accent color
  Color get accentColor;

  /// Error color
  Color get errorColor;

  /// Scaffold background color
  Color get scaffoldBackgroundColor;

  /// Brigthtness of the theme
  Brightness get brightness;
}

/// Custom colors for app's light theme
class CustomLightColorTheme extends CustomColorTheme {
  const CustomLightColorTheme();

  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get primaryColor => const Color(0xFF192B8A);

  @override
  Color get primaryColorLight => const Color(0xFF0E27A5);

  @override
  Color get primaryColorExtraLight => const Color(0xFF3557FF);

  @override
  Color get primaryColorDark => const Color(0xFF000A38);

  @override
  Color get accentColor => const Color(0xFFECED4C);

  @override
  Color get errorColor => const Color(0xFFea4d4d);

  @override
  Color get scaffoldBackgroundColor => const Color(0xFFf4f5f7);
}

/// Custom colors for app's dark theme
class CustomDarkColorTheme extends CustomColorTheme {
  const CustomDarkColorTheme();

  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get primaryColor => const Color(0xFFFFFFFF);

  @override
  Color get primaryColorLight => const Color(0xFFf5f5f5);

  @override
  Color get primaryColorExtraLight => const Color(0xFF01deFF);

  @override
  Color get primaryColorDark => const Color(0xFFFFFFFF);

  @override
  Color get accentColor => const Color(0xFFEEFF41);

  @override
  Color get errorColor => const Color(0xFFeaee3d);

  @override
  Color get scaffoldBackgroundColor => const Color(0xFF434343);
}
