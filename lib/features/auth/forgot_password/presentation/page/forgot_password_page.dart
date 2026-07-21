import 'package:flutter/material.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/routes/routes.dart';
import 'package:rotasimples/core/widgets/email_widget.dart';
import 'package:rotasimples/features/auth/forgot_password/presentation/widget/header.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RSTopBar(
        title: 'Recuperar Senha',
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
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Header(
                          iconName: 'lock',
                          label:
                              'Informe o email da sua conta e\nenviaremos instruções para redefinir sua\nsenha.',
                        ),
                        EmailWidget(
                          onValidityChanged: (isValid) =>
                              setState(() => isEmailValid = isValid),
                        ),
                        const SizedBox(height: RSSpacing.lg),
                        RSButton(
                          label: 'Enviar instruções',
                          onPressed: isEmailValid
                              ?
                                // TODO(KGM): Implement forgot password functionality
                                // Navigator.of(context).pop();
                                () => Navigator.of(
                                  context,
                                ).pushNamed(Routes.resetPasswordRoute)
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
