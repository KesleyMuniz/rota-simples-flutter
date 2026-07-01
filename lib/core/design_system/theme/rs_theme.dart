import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tokens/rs_colors.dart';
import '../tokens/rs_radius.dart';

ThemeData rsThemeDark() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: RSColors.bgApp,
    colorScheme: const ColorScheme.dark(
      surface: RSColors.bgApp,
      primary: RSColors.accent,
      secondary: RSColors.accentLight,
      error: RSColors.error,
    ),
    textTheme: GoogleFonts.manropeTextTheme(ThemeData.dark().textTheme).apply(
      bodyColor: RSColors.textPrimary,
      displayColor: RSColors.textPrimary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: RSColors.bgApp,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: RSColors.textPrimary),
      titleTextStyle: TextStyle(color: RSColors.textPrimary, fontSize: 20, fontWeight: FontWeight.w600),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: RSColors.bgCard,
      selectedItemColor: RSColors.accent,
      unselectedItemColor: RSColors.textTertiary,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: RSColors.bgCard,
      border: OutlineInputBorder(
        borderRadius: RSRadius.inputBorder,
        borderSide: const BorderSide(color: RSColors.border10),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: RSRadius.inputBorder,
        borderSide: const BorderSide(color: RSColors.border10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: RSRadius.inputBorder,
        borderSide: const BorderSide(color: RSColors.accent),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: RSRadius.inputBorder,
        borderSide: const BorderSide(color: RSColors.error),
      ),
      hintStyle: const TextStyle(color: RSColors.textTertiary),
    ),
    cardTheme: CardThemeData(
      color: RSColors.bgCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: RSRadius.cardBorder,
        side: const BorderSide(color: RSColors.border10),
      ),
    ),
  );
}
