import 'package:flutter/material.dart';

import '../design_system.dart';

enum RSAlertVariant { warning, error, info }

/// Alerta inline (linha com ícone + mensagem) com fundo translúcido —
/// ex.: aviso de "sem conexão com a internet".
class RSAlert extends StatelessWidget {
  const RSAlert({
    super.key,
    required this.message,
    this.variant = RSAlertVariant.warning,
  });

  final String message;
  final RSAlertVariant variant;

  @override
  Widget build(BuildContext context) {
    final (base, textColor, iconName) = switch (variant) {
      RSAlertVariant.warning => (
        RSColors.warning,
        RSColors.warningText,
        'warning_circle',
      ),
      RSAlertVariant.error => (RSColors.error, RSColors.errorText, 'warning_circle'),
      RSAlertVariant.info => (RSColors.blue, RSColors.blue, 'warning_circle'),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: base.withValues(alpha: 0.1),
        borderRadius: RSRadius.alertBorder,
        border: Border.all(color: base.withValues(alpha: 0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RSIcon(iconName, size: 17, color: base),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: RSType.alert(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
