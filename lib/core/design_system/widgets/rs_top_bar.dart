import 'package:flutter/material.dart';

import '../design_system.dart';

/// Top bar com botão voltar + título, com borda inferior sutil.
///
/// Feita para ser o primeiro item de uma Column de tela (não é um AppBar);
/// abaixo dela vem a área de conteúdo scrollável.
class RSTopBar extends StatelessWidget {
  const RSTopBar({super.key, required this.title, this.onBack});

  final String title;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: RSColors.border06)),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            RSSpacing.lg,
            RSSpacing.sm,
            RSSpacing.lg,
            14,
          ),
          child: Row(
            children: [
              if (onBack != null) ...[
                RSIconButton(
                  onTap: onBack!,
                  icon: const RSIcon(
                    'chevron_left',
                    width: 11,
                    height: 18,
                    color: RSColors.textLight,
                  ),
                ),
                const SizedBox(width: RSSpacing.md),
              ],
              Text(title, style: RSType.appBarTitle()),
            ],
          ),
        ),
      ),
    );
  }
}
