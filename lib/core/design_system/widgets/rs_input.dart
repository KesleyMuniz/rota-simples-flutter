import 'package:flutter/material.dart';

import '../design_system.dart';

class RSInput extends StatelessWidget {
  const RSInput({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.errorText,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.enabled = true,
  });

  final String label;
  final String? hint;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null && errorText!.isNotEmpty;
    final errorBorder = OutlineInputBorder(
      borderRadius: RSRadius.inputBorder,
      borderSide: const BorderSide(color: RSColors.error),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: RSType.label()),
        const SizedBox(height: 6),
        SizedBox(
          height: RSSizes.inputHeight,
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            obscureText: obscureText,
            keyboardType: keyboardType,
            enabled: enabled,
            style: RSType.body(),
            decoration: InputDecoration(
              hintText: hint,
              suffixIcon: suffixIcon,
              enabledBorder: hasError ? errorBorder : null,
              focusedBorder: hasError ? errorBorder : null,
            ),
          ),
        ),
        if (hasError) ...[
          const SizedBox(height: 4),
          Text(errorText!, style: RSType.label(color: RSColors.error)),
        ],
      ],
    );
  }
}
