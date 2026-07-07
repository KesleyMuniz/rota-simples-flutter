import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/routes/routes.dart';
import 'package:rotasimples/features/auth/login/presentation/page/login_page.dart';
import 'package:rotasimples/features/auth/login/presentation/widget/email_widget.dart';
import 'package:rotasimples/features/auth/login/presentation/widget/password_widget.dart';

/// Observa os pushes nomeados para verificar a navegação disparada pela tela.
class _RouteObserver extends NavigatorObserver {
  final pushed = <String?>[];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    pushed.add(route.settings.name);
    super.didPush(route, previousRoute);
  }
}

void main() {
  late _RouteObserver observer;

  Future<void> pumpLogin(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    observer = _RouteObserver();
    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [observer],
        onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (_) => const Scaffold(),
        ),
        home: const LoginScreenPage(),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> fillValidCredentials(WidgetTester tester) async {
    await tester.enterText(find.byType(TextField).at(0), 'user@test.com');
    await tester.enterText(find.byType(TextField).at(1), 'Abc@159');
    await tester.pump();
  }

  group('LoginScreenPage', () {
    testWidgets('renderiza logo, campos e botão de entrar', (tester) async {
      await pumpLogin(tester);

      expect(find.byType(EmailWidget), findsOneWidget);
      expect(find.byType(PasswordWidget), findsOneWidget);
      expect(find.text('ENTRAR'), findsOneWidget);
      expect(find.text('Esqueceu sua senha?'), findsOneWidget);
      expect(find.text('Cadastre-se'), findsOneWidget);
    });

    testWidgets('botão ENTRAR não navega enquanto os campos são inválidos', (
      tester,
    ) async {
      await pumpLogin(tester);

      await tester.tap(find.text('ENTRAR'));
      await tester.pumpAndSettle();

      expect(observer.pushed.contains(Routes.homeRoute), isFalse);
    });

    testWidgets('com credenciais válidas, ENTRAR navega para a home', (
      tester,
    ) async {
      await pumpLogin(tester);
      await fillValidCredentials(tester);

      await tester.ensureVisible(find.text('ENTRAR'));
      await tester.tap(find.text('ENTRAR'));
      await tester.pumpAndSettle();

      expect(observer.pushed.contains(Routes.homeRoute), isTrue);
    });

    testWidgets('"Esqueceu sua senha?" navega para recuperar senha', (
      tester,
    ) async {
      await pumpLogin(tester);

      await tester.ensureVisible(find.text('Esqueceu sua senha?'));
      await tester.tap(find.text('Esqueceu sua senha?'));
      await tester.pumpAndSettle();

      expect(observer.pushed.contains(Routes.forgotPasswordRoute), isTrue);
    });

    testWidgets('"Cadastre-se" navega para o cadastro', (tester) async {
      await pumpLogin(tester);

      await tester.ensureVisible(find.text('Cadastre-se'));
      await tester.tap(find.text('Cadastre-se'));
      await tester.pumpAndSettle();

      expect(observer.pushed.contains(Routes.signupRoute), isTrue);
    });
  });
}
