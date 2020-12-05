import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/core/theme/color_theme.dart';

/// Abstract class containing all the possible text style in the app theme
///
/// Generate the text theme using the official Material design tool:
/// https://material.io/design/typography/the-type-system.html#type-scale
abstract class CustomTextTheme {
  CustomColorTheme get customColorTheme;
  const CustomTextTheme();

  /// General [TextTheme] for the app theme
  TextTheme get textTheme;
}

/// Default text theme settings
class CustomDefaultTextTheme implements CustomTextTheme {
  @override
  final CustomColorTheme customColorTheme;

  const CustomDefaultTextTheme(this.customColorTheme);

  @override
  TextTheme get textTheme => TextTheme(
        headline1: TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w300,
          color: customColorTheme.textColor,
          letterSpacing: -1.5,
        ),
        headline2: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w300,
          color: customColorTheme.textColor,
          letterSpacing: -0.5,
        ),
        headline3: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
        ),
        headline4: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
          letterSpacing: 0.25,
        ),
        headline5: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
        ),
        headline6: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: customColorTheme.textColor,
          letterSpacing: 0.15,
        ),
        subtitle1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: customColorTheme.textColor,
          letterSpacing: 0.1,
        ),
        bodyText2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
          letterSpacing: 0.5,
        ),
        bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: customColorTheme.textColor,
          letterSpacing: 1.25,
        ),
        caption: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
          letterSpacing: 0.4,
        ),
        overline: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: customColorTheme.textColor,
          letterSpacing: 1.5,
        ),
      );
}
