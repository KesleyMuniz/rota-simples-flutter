import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';

class Header extends StatelessWidget {
  final String iconName;
  final String label;

  const Header({super.key, required this.iconName, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: RSSpacing.xxl),
        RSIconBadge(
          icon: RSIcon(
            iconName,
            size: RSSizes.iconContainer,
            color: RSColors.blue,
          ),
        ),
        const SizedBox(height: RSSpacing.md),
        Text(
          label,
          style: RSType.bodySmall(color: RSColors.textSecondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: RSSpacing.xl),
      ],
    );
  }
}
