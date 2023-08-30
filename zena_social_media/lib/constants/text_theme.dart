import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ATextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge:
        GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold),
    displayMedium:
        GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700),
    displaySmall:
        GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
    headlineLarge:
        GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600),
    headlineMedium:
        GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600),
    headlineSmall:
        GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyLarge:
        GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal),
    bodySmall:
        GoogleFonts.poppins(fontSize: 13.0, fontWeight: FontWeight.normal),
  );
}
