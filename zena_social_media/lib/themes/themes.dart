import 'package:flutter/material.dart';

class Themes {
  // Making this theme private i.e. user cant access it through inspection
  Themes._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
