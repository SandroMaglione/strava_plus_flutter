import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/core/theme/color_theme.dart';
import 'package:mobile_polimi_project/core/theme/text_theme.dart';
import 'package:mobile_polimi_project/core/theme/theme_option.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

/// General app theme appearance (text styles, colors etc.)
class CustomAppTheme {
  /// Standard unique font family of the app
  static const String _fontFamily = 'Amble';

  /// Reference to the current [ThemeOption]
  final ThemeOption themeOption;

  /// Contains [TextTheme] for the app
  final CustomTextTheme customTextTheme;

  /// Contains all the colors for the app
  final CustomColorTheme customColorTheme;

  /// Inject dependencies
  const CustomAppTheme({
    @required this.themeOption,
    @required this.customTextTheme,
    @required this.customColorTheme,
  });

  /// Get [CustomAppTheme] given [ThemeOption]
  static CustomAppTheme getCustomAppTheme(ThemeOption themeOption) {
    if (themeOption is ThemeLightThemeOption) {
      return CustomAppTheme.lightTheme;
    } else if (themeOption is ThemeDarkThemeOption) {
      return CustomAppTheme.darkTheme;
    }

    // Light theme as default
    return CustomAppTheme.lightTheme;
  }

  /// Get [CustomAppTheme] setting for light theme
  static CustomAppTheme get lightTheme {
    const customColorTheme = const CustomLightColorTheme();
    _setStatusBarColor(
        customColorTheme.scaffoldBackgroundColor, StatusBarStyle.DARK_CONTENT);
    return const CustomAppTheme(
      themeOption: const ThemeOption.theme_light(),
      customTextTheme: const CustomDefaultTextTheme(customColorTheme),
      customColorTheme: customColorTheme,
    );
  }

  /// Get [CustomAppTheme] setting for dark theme
  static CustomAppTheme get darkTheme {
    const customColorTheme = const CustomDarkColorTheme();
    _setStatusBarColor(
        customColorTheme.scaffoldBackgroundColor, StatusBarStyle.LIGHT_CONTENT);
    return const CustomAppTheme(
      themeOption: const ThemeOption.theme_dark(),
      customTextTheme: const CustomDefaultTextTheme(customColorTheme),
      customColorTheme: customColorTheme,
    );
  }

  /// General [ThemeData] containing default styles (colors, fonts, texts etc.)
  /// for the whole application
  ThemeData get themeData => ThemeData(
        fontFamily: _fontFamily,
        textTheme: customTextTheme.textTheme,
        accentColor: customColorTheme.primaryColor,
        scaffoldBackgroundColor: customColorTheme.scaffoldBackgroundColor,
        errorColor: customColorTheme.errorColor,
        primaryColor: customColorTheme.primaryColor,
        primaryColorDark: customColorTheme.primaryColorDark,
        primaryColorLight: customColorTheme.primaryColorLight,
        brightness: customColorTheme.brightness,
        cardTheme: CardTheme(
          elevation: 30,
          shadowColor: customColorTheme.scaffoldBackgroundColorLight,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: customColorTheme.errorColor,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: customColorTheme.primaryColorDark,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: customColorTheme.primaryColorDark,
            ),
          ),
        ),
        primaryTextTheme: const TextTheme(
          button: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      );

  static void _setStatusBarColor(Color color, StatusBarStyle statusBarStyle) {
    FlutterStatusbarManager.setColor(
      color,
      animated: true,
    );
    FlutterStatusbarManager.setStyle(statusBarStyle);
  }
}
