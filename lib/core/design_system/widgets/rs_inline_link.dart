import 'package:flutter/material.dart';
import '../design_system.dart';

class RSInlineLink extends StatelessWidget {
  const RSInlineLink({
    super.key,
    required this.text,
    required this.actionLabel,
    required this.onTap,
  });

  final String text;
  final String actionLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: RSType.body()),
        const SizedBox(width: RSSpacing.xs),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionLabel,
            style: RSType.body(color: RSColors.accent).copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
