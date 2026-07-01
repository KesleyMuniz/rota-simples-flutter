import 'package:flutter/material.dart';

class RSRadius {
  RSRadius._();

  static const double iconButton = 11; // botão voltar
  static const double chip = 12; // badge de email
  static const double alert = 13; // alerta offline
  static const double input = 14;
  static const double buttonSm = 14; // botão secundário
  static const double card = 16;
  static const double button = 16;
  static const double pill = 99;
  static const double bottomSheet = 26;
  static const double map = 18;

  static const cardBorder = BorderRadius.all(Radius.circular(card));
  static const buttonBorder = BorderRadius.all(Radius.circular(button));
  static const buttonSmBorder = BorderRadius.all(Radius.circular(buttonSm));
  static const iconButtonBorder = BorderRadius.all(Radius.circular(iconButton));
  static const chipBorder = BorderRadius.all(Radius.circular(chip));
  static const alertBorder = BorderRadius.all(Radius.circular(alert));
  static const inputBorder = BorderRadius.all(Radius.circular(input));
  static const pillBorder = BorderRadius.all(Radius.circular(pill));
  static final bottomSheetBorder = BorderRadius.only(
    topLeft: Radius.circular(bottomSheet),
    topRight: Radius.circular(bottomSheet),
  );
}
