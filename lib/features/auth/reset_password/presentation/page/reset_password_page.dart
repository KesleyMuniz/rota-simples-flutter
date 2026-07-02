import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/widgets/password_widget.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool _isPasswordValid = false;
  bool _isCurrentPasswordValid = false;
  bool _isConfirmPasswordValid = false;
  String _newPassword = '';

  @override
  Widget build(BuildContext context) {
    final canSubmit =
        _isCurrentPasswordValid && _isPasswordValid && _isConfirmPasswordValid;
    return Scaffold(
      appBar: RSTopBar(
        title: 'Trocar senha',
        onBack: () => Navigator.of(context).pop(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: RSSpacing.screenHorizontal,
                right: RSSpacing.screenHorizontal,
              ),
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: RSSpacing.xxl),
                            PasswordWidget(
                              type: PasswordFieldType.current,
                              showRules: false,
                              label: 'SENHA ATUAL',
                              hint: 'Digite sua senha atual',
                              onValidityChanged: (isValid) => setState(
                                () => _isCurrentPasswordValid = isValid,
                              ),
                            ),
                            const SizedBox(height: RSSpacing.xl),
                            const Divider(
                              height: 1, // ocupa só 1px de altura
                              thickness: 2, // espessura do traço
                              color: RSColors
                                  .border06, // rgba(255,255,255,0.06) do handoff
                            ),
                            const SizedBox(height: RSSpacing.xl),
                            Column(
                              children: [
                                PasswordWidget(
                                  type: PasswordFieldType.create,
                                  showRules: true,
                                  label: 'NOVA SENHA',
                                  hint: 'Mínimo 8 caracteres',
                                  onChanged: (value) =>
                                      setState(() => _newPassword = value),
                                  onValidityChanged: (isValid) => setState(
                                    () => _isPasswordValid = isValid,
                                  ),
                                ),
                                const SizedBox(height: RSSpacing.xl),
                                PasswordWidget(
                                  type: PasswordFieldType.confirm,
                                  matchValue: _newPassword,
                                  showRules: false,
                                  label: 'CONFIRMAR NOVA SENHA',
                                  hint: 'Repita a nova senha',
                                  onValidityChanged: (isValid) => setState(
                                    () => _isConfirmPasswordValid = isValid,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            const Divider(
                              height: 1, // ocupa só 1px de altura
                              thickness: 2, // espessura do traço
                              color: RSColors
                                  .border06, // rgba(255,255,255,0.06) do handoff
                            ),
                            const SizedBox(height: RSSpacing.md),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: RSSpacing.md,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: RSSizes.bottomFlexSizeSm,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: RSSpacing.md,
                                        right: RSSpacing.md,
                                      ),
                                      child: RSButton(
                                        label: 'Cancelar',
                                        variant: RSButtonVariant.secondary,
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: RSSizes.bottomFlexSize,
                                    child: RSButton(
                                      label: 'Atualizar senha',
                                      onPressed: canSubmit
                                          ? () {
                                              // TODO(KGM): Implement reset password functionality
                                              // Navigator.of(context).pop();
                                            }
                                          : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
