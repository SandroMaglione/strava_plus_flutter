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
  Color get scaffoldBackgroundColorLight;

  /// Scaffold background color
  Color get scaffoldBackgroundColor;

  /// Scaffold background color
  Color get scaffoldBackgroundColorDark;

  /// Text color
  Color get textColor;

  /// Brigthtness of the theme
  Brightness get brightness;
}

/// Custom colors for app's light theme
class CustomLightColorTheme extends CustomColorTheme {
  const CustomLightColorTheme();

  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get primaryColor => const Color(0xFFff854a);

  @override
  Color get primaryColorLight => const Color(0xFFffb678);

  @override
  Color get primaryColorExtraLight => const Color(0xFFffe0c1);

  @override
  Color get primaryColorDark => const Color(0xFFc6561d);

  @override
  Color get accentColor => const Color(0xFF4895f0);

  @override
  Color get errorColor => const Color(0xFFea4d4d);

  @override
  Color get scaffoldBackgroundColor => const Color(0xFFEFEFEF);

  @override
  Color get scaffoldBackgroundColorDark => const Color(0xFFE4E4E4);

  @override
  Color get scaffoldBackgroundColorLight => const Color(0xffFAFAFA);

  @override
  Color get textColor => const Color(0xFF111111);
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

  @override
  // TODO: implement scaffoldBackgroundColorDark
  Color get scaffoldBackgroundColorDark => throw UnimplementedError();

  @override
  // TODO: implement scaffoldBackgroundColorLight
  Color get scaffoldBackgroundColorLight => throw UnimplementedError();

  @override
  // TODO: implement textColor
  Color get textColor => throw UnimplementedError();
}
