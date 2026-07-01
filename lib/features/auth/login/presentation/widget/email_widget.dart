import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/utils/validators.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key, this.onValidityChanged});

  final ValueChanged<bool>? onValidityChanged;

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  String? _errorText;

  void _validate(String value) {
    final isInvalid = value.isEmpty || Validators.email(value) == false;
    setState(() => _errorText = value.isNotEmpty && isInvalid ? 'Email inválido' : null);
    widget.onValidityChanged?.call(!isInvalid);
  }

  @override
  Widget build(BuildContext context) {
    return RSInput(
      label: 'EMAIL',
      hint: 'seu@email.com',
      keyboardType: TextInputType.emailAddress,
      errorText: _errorText,
      onChanged: _validate,
    );
  }
}
