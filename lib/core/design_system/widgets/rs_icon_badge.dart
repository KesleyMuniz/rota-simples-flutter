import 'package:flutter/material.dart';

import '../design_system.dart';

/// Container circular com fundo translúcido para destacar um ícone —
/// ex.: cadeado (azul) na tela de recuperar senha, check (sucesso) na
/// confirmação de envio.
class RSIconBadge extends StatelessWidget {
  const RSIconBadge({
    super.key,
    required this.icon,
    this.size = RSSizes.iconBadge,
    this.color = RSColors.blue,
    this.backgroundOpacity = 0.12,
  });

  final Widget icon;
  final double size;
  final Color color;
  final double backgroundOpacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withValues(alpha: backgroundOpacity),
      ),
      child: Center(child: icon),
    );
  }
}
