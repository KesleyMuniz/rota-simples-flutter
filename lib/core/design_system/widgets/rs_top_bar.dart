import 'package:flutter/material.dart';

import '../design_system.dart';

/// Top bar com botão voltar + título, com borda inferior sutil.
///
/// Implementa [PreferredSizeWidget] para poder ser usada como `appBar` de um
/// [Scaffold].
class RSTopBar extends StatelessWidget implements PreferredSizeWidget {
  const RSTopBar({super.key, required this.title, this.onBack});

  final String title;
  final VoidCallback? onBack;

  static const double _contentHeight = 60;

  @override
  Size get preferredSize => const Size.fromHeight(_contentHeight);

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
