import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/utils/validators.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key, this.onValidityChanged});

  final ValueChanged<bool>? onValidityChanged;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  final _focusNode = FocusNode();
  String _value = '';
  bool _showRules = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() => _showRules = _focusNode.hasFocus);
  }

  void _validate(String value) {
    setState(() => _value = value);
    final (isValid, _) = Validators.password(value);
    widget.onValidityChanged?.call(isValid);
  }

  @override
  Widget build(BuildContext context) {
    final rules = <(String, bool)>[
      ('6 a 20 caracteres', Validators.passwordHasValidLength(_value)),
      (
        'Pelo menos 1 caractere especial',
        Validators.passwordHasSpecialChar(_value),
      ),
      (
        'Letra maiúscula e minúscula',
        Validators.passwordHasUpperAndLowerCase(_value),
      ),
      ('Pelo menos 1 número', Validators.passwordHasDigit(_value)),
      (
        'Sem sequência numérica (ex.: 123, 987)',
        Validators.passwordHasNoSequentialDigits(_value),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RSInput(
          label: 'SENHA',
          hint: 'Sua senha',
          obscureText: true,
          focusNode: _focusNode,
          onChanged: _validate,
        ),
        if (_showRules) ...[
          const SizedBox(height: RSSpacing.xs),
          for (final (label, passes) in rules)
            Text(
              '• $label',
              style: RSType.label(
                color: passes ? RSColors.accentLight : RSColors.error,
              ),
            ),
        ],
      ],
    );
  }
}
