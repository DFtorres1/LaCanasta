import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LCTextThemes {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),

      titleLarge: GoogleFonts.ubuntu(
        fontSize: 35,
      ),

      titleMedium: GoogleFonts.ubuntu(
        fontSize: 18,
      )

  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),

    titleLarge: GoogleFonts.ubuntu(
      fontSize: 35,
    ),

    titleMedium: GoogleFonts.ubuntu(
      fontSize: 18,
    )

  );
}