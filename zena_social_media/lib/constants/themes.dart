import 'package:flutter/material.dart';
import 'package:zena_social_media/constants/const_exports.dart';

class Themes {
  // Making this theme private i.e. user cant access it through inspection
  Themes._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, textTheme: ATextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
