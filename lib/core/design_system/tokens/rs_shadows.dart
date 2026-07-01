import 'package:flutter/material.dart';

class RSShadows {
  RSShadows._();

  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color(0x59000000),
      blurRadius: 30,
      offset: Offset(0, 12),
    ),
  ];

  static const List<BoxShadow> ctaAccent = [
    BoxShadow(
      color: Color(0x5700C2A8),
      blurRadius: 22,
      offset: Offset(0, 8),
    ),
  ];

  static const List<BoxShadow> ctaError = [
    BoxShadow(
      color: Color(0x57FF5A5F),
      blurRadius: 22,
      offset: Offset(0, 8),
    ),
  ];
}
