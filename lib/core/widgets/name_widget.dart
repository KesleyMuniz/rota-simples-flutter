import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/utils/validators.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({super.key, this.onValidityChanged});

  final ValueChanged<bool>? onValidityChanged;

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  String? _errorText;

  void _validate(String value) {
    final isInvalid = value.isEmpty || Validators.name(value) == false;
    setState(
      () => _errorText = value.isNotEmpty && isInvalid ? 'Nome inválido' : null,
    );
    widget.onValidityChanged?.call(!isInvalid);
  }

  @override
  Widget build(BuildContext context) {
    return RSInput(
      label: 'NOME COMPLETO',
      hint: 'Seu nome completo',
      keyboardType: TextInputType.text,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[A-Za-zÀ-ÖØ-öø-ÿ\s]')),
      ],
      errorText: _errorText,
      onChanged: _validate,
    );
  }
}
