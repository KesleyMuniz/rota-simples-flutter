import 'package:flutter/material.dart';
import '../design_system.dart';

class RSCard extends StatelessWidget {
  const RSCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevated = false,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool elevated;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: elevated ? RSColors.bgElevated : RSColors.bgCard,
        borderRadius: RSRadius.cardBorder,
        border: Border.all(color: RSColors.border10),
        boxShadow: elevated ? RSShadows.card : null,
      ),
      child: onTap != null
          ? Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: RSRadius.cardBorder,
                child: Padding(padding: padding, child: child),
              ),
            )
          : Padding(padding: padding, child: child),
    );
  }
}
