import 'package:flutter/material.dart';

import '../design_system.dart';

/// Botão quadrado com ícone e cantos arredondados — ex.: botão voltar.
class RSIconButton extends StatelessWidget {
  const RSIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = RSSizes.iconButton,
  });

  final Widget icon;
  final VoidCallback onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: RSColors.bgSurface,
      borderRadius: RSRadius.iconButtonBorder,
      child: InkWell(
        onTap: onTap,
        borderRadius: RSRadius.iconButtonBorder,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: RSRadius.iconButtonBorder,
            border: Border.all(color: RSColors.border10),
          ),
          child: Center(child: icon),
        ),
      ),
    );
  }
}
