import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './../constants/export_constants.dart';

class ATextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.akayaKanadaka(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: lTextColor1),
    displayMedium: GoogleFonts.akayaKanadaka(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: lTextColor1),
    displaySmall: GoogleFonts.acme(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: lTextColor2),
    headlineLarge: GoogleFonts.acme(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: lTextColor2),
    headlineMedium: GoogleFonts.acme(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: lTextColor2),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: darkGrey),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: darkGrey),
    bodySmall: GoogleFonts.poppins(
        fontSize: 13.0, fontWeight: FontWeight.normal, color: darkGrey),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.akayaKanadaka(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: colorWhite),
    displayMedium: GoogleFonts.akayaKanadaka(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: colorWhite),
    displaySmall: GoogleFonts.acme(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: colorLight),
    headlineLarge: GoogleFonts.acme(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: colorLight),
    headlineMedium: GoogleFonts.acme(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: colorLight),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: colorGrey),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: colorGrey),
    bodySmall: GoogleFonts.poppins(
        fontSize: 13.0, fontWeight: FontWeight.normal, color: darkGrey),
  );
}
