import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/routes/routes.dart';
import 'package:rotasimples/features/auth/login/presentation/widget/email_widget.dart';
import 'package:rotasimples/features/auth/login/presentation/widget/password_widget.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  bool _isEmailValid = false;
  bool _isPasswordValid = false;

  @override
  Widget build(BuildContext context) {
    final canSubmit = _isEmailValid && _isPasswordValid;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: RSSpacing.screenHorizontal,
              right: RSSpacing.screenHorizontal,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const RSLogo(),
                  Column(
                    children: [
                      const SizedBox(height: RSSpacing.xxl),
                      EmailWidget(
                        onValidityChanged: (isValid) =>
                            setState(() => _isEmailValid = isValid),
                      ),
                      const SizedBox(height: RSSpacing.md),
                      PasswordWidget(
                        onValidityChanged: (isValid) =>
                            setState(() => _isPasswordValid = isValid),
                      ),
                      const SizedBox(height: RSSpacing.md),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () => Navigator.of(
                            context,
                          ).pushNamed(Routes.forgotPasswordRoute),
                          child: const Text(
                            'Esqueceu sua senha?',
                            style: TextStyle(color: RSColors.accent),
                          ),
                        ),
                      ),
                      const SizedBox(height: RSSpacing.xxl),
                      RSButton(
                        label: 'ENTRAR',
                        onPressed: canSubmit
                            ? () => Navigator.of(
                                context,
                              ).pushNamed(Routes.homeRoute)
                            : null,
                      ),
                      const SizedBox(height: RSSpacing.xxl),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: RSSpacing.xxxl,
                      bottom: RSSpacing.md,
                    ),
                    child: RSInlineLink(
                      text: 'Não tem conta?',
                      actionLabel: 'Cadastre-se',
                      onTap: () =>
                          Navigator.of(context).pushNamed(Routes.signupRoute),
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
