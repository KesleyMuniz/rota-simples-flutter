import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rs_colors.dart';

class RSType {
  RSType._();

  // Display / Headings — Sora
  static TextStyle screenTitle({Color color = RSColors.textPrimary}) =>
      GoogleFonts.sora(fontSize: 27, fontWeight: FontWeight.w700, color: color, letterSpacing: -0.5);

  static TextStyle heroNumber({Color color = RSColors.textPrimary}) =>
      GoogleFonts.sora(fontSize: 40, fontWeight: FontWeight.w800, color: color, letterSpacing: -1);

  static TextStyle sectionLabel({Color color = RSColors.textTertiary}) =>
      GoogleFonts.sora(fontSize: 11, fontWeight: FontWeight.w600, color: color, letterSpacing: 0.8);

  // Body / UI — Manrope
  static TextStyle cta({Color color = RSColors.bgApp}) =>
      GoogleFonts.manrope(fontSize: 17, fontWeight: FontWeight.w700, color: color);

  static TextStyle body({Color color = RSColors.textPrimary}) =>
      GoogleFonts.manrope(fontSize: 15, fontWeight: FontWeight.w400, color: color);

  static TextStyle bodySmall({Color color = RSColors.textSecondary}) =>
      GoogleFonts.manrope(fontSize: 14, fontWeight: FontWeight.w400, color: color);

  static TextStyle label({Color color = RSColors.textSecondary}) =>
      GoogleFonts.manrope(fontSize: 13, fontWeight: FontWeight.w500, color: color);

  static TextStyle navLabel({Color color = RSColors.textTertiary}) =>
      GoogleFonts.manrope(fontSize: 10.5, fontWeight: FontWeight.w500, color: color);
}
