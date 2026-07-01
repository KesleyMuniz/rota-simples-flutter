import 'package:flutter/material.dart';
import '../design_system.dart';

enum RSBadgeVariant { accent, success, warning, error, neutral }

class RSBadge extends StatelessWidget {
  const RSBadge({super.key, required this.label, this.variant = RSBadgeVariant.accent});

  final String label;
  final RSBadgeVariant variant;

  @override
  Widget build(BuildContext context) {
    final (bg, fg) = switch (variant) {
      RSBadgeVariant.accent => (RSColors.accent.withAlpha(30), RSColors.accent),
      RSBadgeVariant.success => (RSColors.success.withAlpha(30), RSColors.success),
      RSBadgeVariant.warning => (RSColors.warning.withAlpha(30), RSColors.warning),
      RSBadgeVariant.error => (RSColors.error.withAlpha(30), RSColors.error),
      RSBadgeVariant.neutral => (RSColors.bgElevated, RSColors.textSecondary),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: bg, borderRadius: RSRadius.pillBorder),
      child: Text(label, style: RSType.label(color: fg)),
    );
  }
}
