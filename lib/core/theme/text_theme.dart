import 'package:flutter/material.dart';
import 'package:mobile_polimi_project/core/theme/color_theme.dart';

/// Abstract class containing all the possible text style in the app theme
///
/// Generate the text theme using the official Material design tool:
/// https://material.io/design/typography/the-type-system.html#type-scale
abstract class CustomTextTheme {
  final CustomColorTheme _customColorTheme;
  const CustomTextTheme(this._customColorTheme);

  /// General [TextTheme] for the app theme
  TextTheme get textTheme;
}

/// Default text theme settings
class CustomDefaultTextTheme implements CustomTextTheme {
  @override
  final CustomColorTheme _customColorTheme;

  const CustomDefaultTextTheme(this._customColorTheme);

  @override
  TextTheme get textTheme => const TextTheme(
        // H1
        headline1: const TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
        ),
        // H2
        headline2: const TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5,
        ),
        // H3
        headline3: const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w400,
        ),
        // H4
        headline4: const TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        // H5
        headline5: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        // H6
        headline6: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        // Subtitle 1
        subtitle1: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
        // Subtitle 2
        subtitle2: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        // Default material text style
        bodyText2: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        // Emphasize text inside bodyText2
        bodyText1: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        // Default button style
        button: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
        ),
        // Auxiliary text associated with images
        caption: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        ),
        // For captions or to introduce a (larger) headline
        overline: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
        ),
      );
}
