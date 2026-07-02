import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/utils/validators.dart';

enum PasswordFieldType { current, create, confirm }

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    super.key,
    this.onValidityChanged,
    this.onChanged,
    this.label,
    this.hint,
    this.showRules,
    this.type = PasswordFieldType.create,
    this.matchValue,
  });

  final ValueChanged<bool>? onValidityChanged;
  final ValueChanged<String>? onChanged;
  final String? label;
  final String? hint;
  final bool? showRules;
  final PasswordFieldType type;

  /// Valor que a senha precisa igualar quando [type] é [PasswordFieldType.confirm].
  final String? matchValue;

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
  void didUpdateWidget(covariant PasswordWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.type == PasswordFieldType.confirm &&
        oldWidget.matchValue != widget.matchValue) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _notifyValidity();
      });
    }
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
    widget.onChanged?.call(value);
    _notifyValidity();
  }

  void _notifyValidity() {
    final isValid = switch (widget.type) {
      PasswordFieldType.current => _value.isNotEmpty,
      PasswordFieldType.create => Validators.password(_value).$1,
      PasswordFieldType.confirm =>
        _value.isNotEmpty && _value == widget.matchValue,
    };
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
          label: widget.label ?? 'SENHA',
          hint: widget.hint ?? 'Sua senha',
          obscureText: true,
          focusNode: _focusNode,
          onChanged: _validate,
        ),
        if (_showRules && widget.showRules == true) ...[
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
