import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/routes/routes.dart';
import 'package:rotasimples/core/widgets/email_widget.dart';
import 'package:rotasimples/core/widgets/name_widget.dart';
import 'package:rotasimples/core/widgets/password_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isNameValid = false;
  bool _isEmailValid = false;
  bool _isPasswordValid = false;
  bool _isConfirmPasswordValid = false;
  String _newPassword = '';

  @override
  Widget build(BuildContext context) {
    final canSubmit =
        _isEmailValid &&
        _isPasswordValid &&
        _isConfirmPasswordValid &&
        _isNameValid;
    return Scaffold(
      backgroundColor: RSColors.bgApp,
      appBar: RSTopBar(
        title: 'Criar conta',
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
                            Text(
                              'Crie sua conta para salvar rotas e sincronizar entre dispositivos.',
                              style: RSType.body(),
                            ),
                            const SizedBox(height: RSSpacing.xl),
                            NameWidget(
                              onValidityChanged: (isValid) =>
                                  setState(() => _isNameValid = isValid),
                            ),
                            // PasswordWidget(
                            //   type: PasswordFieldType.name,
                            //   // showRules: false,
                            //   label: 'NOME COMPLETO',
                            //   hint: 'Seu nome completo',
                            //   onValidityChanged: (isValid) =>
                            //       setState(() => _isNameValid = isValid),
                            // ),
                            const SizedBox(height: RSSpacing.xl),
                            EmailWidget(
                              onValidityChanged: (isValid) =>
                                  setState(() => _isEmailValid = isValid),
                            ),
                            const SizedBox(height: RSSpacing.xl),
                            Column(
                              children: [
                                PasswordWidget(
                                  type: PasswordFieldType.create,
                                  showRules: true,
                                  label: 'SENHA',
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
                                  label: 'CONFIRMAR SENHA',
                                  hint: 'Repita a senha',
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
                            RSButton(
                              label: 'Criar conta',
                              onPressed: canSubmit
                                  ? () {
                                      // TODO(KGM): Implement create account functionality
                                      // Navigator.of(context).pop();
                                    }
                                  : null,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: RSSpacing.md,
                                bottom: RSSpacing.xxl,
                              ),
                              child: RSInlineLink(
                                text: 'Já tem conta?',
                                actionLabel: 'Fazer login',
                                onTap: () => Navigator.of(
                                  context,
                                ).pushNamed(Routes.loginRoute),
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
