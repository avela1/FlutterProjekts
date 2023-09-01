import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zena_social_media/constants/export_constants.dart';

class ATextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: lTextColor1),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: lTextColor1),
    displaySmall: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: lTextColor2),
    headlineLarge: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: lTextColor2),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: darkGrey),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: darkGrey),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: darkGrey),
    bodySmall: GoogleFonts.poppins(
        fontSize: 13.0, fontWeight: FontWeight.normal, color: darkGrey),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: colorWhite),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: colorWhite),
    displaySmall: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: colorLight),
    headlineLarge: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: colorLight),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: darkGrey),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: colorGrey),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: colorGrey),
    bodySmall: GoogleFonts.poppins(
        fontSize: 13.0, fontWeight: FontWeight.normal, color: darkGrey),
  );
}
