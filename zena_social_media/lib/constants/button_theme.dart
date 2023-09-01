import 'package:flutter/material.dart';
import 'package:zena_social_media/constants/export_constants.dart';

class AButtonTheme {
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    textStyle: ATextTheme.lightTextTheme.headlineLarge,
    foregroundColor: lTextColor1,
    backgroundColor: colorWhite,
    side: const BorderSide(color: darkGrey),
    padding: const EdgeInsets.symmetric(vertical: buttonHeight),
  ));

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      foregroundColor: colorWhite,
      backgroundColor: colorDark,
      textStyle: ATextTheme.darkTextTheme.headlineLarge,
      side: const BorderSide(color: darkGrey),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: colorWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      textStyle: ATextTheme.darkTextTheme.headlineLarge,
      backgroundColor: colorDanger,
      side: const BorderSide(color: darkGrey),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}
