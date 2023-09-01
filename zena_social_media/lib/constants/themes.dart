import 'package:flutter/material.dart';
import 'package:zena_social_media/constants/export_constants.dart';

class Themes {
  // Making this theme private i.e. user cant access it through inspection
  Themes._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: ATextTheme.lightTextTheme,
    colorScheme: const ColorScheme.light(
      background: colorLight,
      primary: colorWhite,
      secondary: darkGrey,
    ),
    elevatedButtonTheme: AButtonTheme.elevatedButtonTheme,
    outlinedButtonTheme: AButtonTheme.lightOutlineButtonTheme,
    iconTheme: const IconThemeData(color: darkGrey),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: ATextTheme.darkTextTheme,
    buttonTheme: const ButtonThemeData(buttonColor: colorDanger),
    colorScheme: const ColorScheme.dark(
      background: backgroundColor,
      primary: colorDark,
      secondary: darkGrey,
    ),
    elevatedButtonTheme: AButtonTheme.elevatedButtonTheme,
    outlinedButtonTheme: AButtonTheme.darkOutlineButtonTheme,
    iconTheme: const IconThemeData(color: darkGrey),
  );
}