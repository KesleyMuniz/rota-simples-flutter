import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/core/widgets/email_widget.dart';
import 'package:rotasimples/features/auth/forgot_password/presentation/page/forgot_password_page.dart';
import 'package:rotasimples/features/auth/forgot_password/presentation/widget/header.dart';

/// Observa os pops para verificar que o botão voltar da top bar fecha a tela.
class _PopObserver extends NavigatorObserver {
  int popCount = 0;

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    popCount++;
    super.didPop(route, previousRoute);
  }
}

void main() {
  late _PopObserver observer;

  Future<void> pumpForgotPassword(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    observer = _PopObserver();
    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [observer],
        home: Builder(
          builder: (context) => Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ForgotPasswordPage(),
                  ),
                ),
                child: const Text('abrir'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('abrir'));
    await tester.pumpAndSettle();
  }

  group('ForgotPasswordPage', () {
    testWidgets('renderiza título, cabeçalho, campo de email e botão', (
      tester,
    ) async {
      await pumpForgotPassword(tester);

      expect(find.text('Recuperar Senha'), findsOneWidget);
      expect(find.byType(Header), findsOneWidget);
      expect(find.byType(EmailWidget), findsOneWidget);
      expect(find.text('Enviar instruções'), findsOneWidget);
    });

    testWidgets('botão "Enviar instruções" começa desabilitado', (
      tester,
    ) async {
      await pumpForgotPassword(tester);

      final button = tester.widget<RSButton>(find.byType(RSButton));
      expect(button.onPressed, isNull);
    });

    testWidgets('habilita o botão ao informar um email válido', (
      tester,
    ) async {
      await pumpForgotPassword(tester);

      await tester.enterText(find.byType(TextField), 'user@test.com');
      await tester.pump();

      final button = tester.widget<RSButton>(find.byType(RSButton));
      expect(button.onPressed, isNotNull);
    });

    testWidgets('mantém o botão desabilitado com email inválido', (
      tester,
    ) async {
      await pumpForgotPassword(tester);

      await tester.enterText(find.byType(TextField), 'não-é-email');
      await tester.pump();

      final button = tester.widget<RSButton>(find.byType(RSButton));
      expect(button.onPressed, isNull);
    });

    testWidgets('botão voltar da top bar fecha a tela', (tester) async {
      await pumpForgotPassword(tester);

      expect(find.byType(ForgotPasswordPage), findsOneWidget);

      await tester.tap(find.byType(RSIconButton));
      await tester.pumpAndSettle();

      expect(observer.popCount, 1);
      expect(find.byType(ForgotPasswordPage), findsNothing);
    });
  });
}
