import 'package:flutter/material.dart';
import 'package:la_canasta/src/utils/theme/widget_themes/color_scheme.dart';
import 'package:la_canasta/src/utils/theme/widget_themes/text_themes.dart';

class LaCanastaTheme {

  LaCanastaTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      textTheme: LCTextThemes.lightTextTheme,

      colorScheme: lightScheme,

      primaryColor: Colors.red,
      secondaryHeaderColor: Colors.white,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: LCTextThemes.darkTextTheme,

    colorScheme: darkScheme,

    primaryColor: Colors.red,
    secondaryHeaderColor: Colors.white,
  );
}