import 'package:flutter/material.dart';
import '../design_system.dart';

enum RSButtonVariant { primary, secondary, danger, ghost }

class RSButton extends StatelessWidget {
  const RSButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = RSButtonVariant.primary,
    this.isLoading = false,
    this.fullWidth = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final RSButtonVariant variant;
  final bool isLoading;
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    final (bg, fg, shadow) = switch (variant) {
      RSButtonVariant.primary => (RSColors.accent, RSColors.bgApp, RSShadows.ctaAccent),
      RSButtonVariant.secondary => (RSColors.bgCard, RSColors.textPrimary, <BoxShadow>[]),
      RSButtonVariant.danger => (RSColors.error, RSColors.textPrimary, RSShadows.ctaError),
      RSButtonVariant.ghost => (Colors.transparent, RSColors.accent, <BoxShadow>[]),
    };

    Widget child = isLoading
        ? SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(color: fg, strokeWidth: 2.5),
          )
        : Text(label, style: RSType.cta(color: fg));

    Widget button = Container(
      height: RSSizes.buttonHeight,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: RSRadius.buttonBorder,
        boxShadow: onPressed == null ? [] : shadow,
        border: variant == RSButtonVariant.secondary || variant == RSButtonVariant.ghost
            ? Border.all(color: RSColors.border14)
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: RSRadius.buttonBorder,
          child: Center(child: child),
        ),
      ),
    );

    if (onPressed == null && !isLoading) {
      button = Opacity(opacity: 0.5, child: button);
    }

    return fullWidth ? SizedBox(width: double.infinity, child: button) : button;
  }
}
