import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/routes/routes.dart';
import 'package:rotasimples/core/widgets/email_widget.dart';
import 'package:rotasimples/core/widgets/name_widget.dart';
import 'package:rotasimples/core/widgets/password_widget.dart';
import 'package:rotasimples/features/auth/signup/presentation/page/signup_page.dart';

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

  Future<void> pumpSignup(WidgetTester tester) async {
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
        home: const SignupPage(),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> fillAllFieldsValid(WidgetTester tester) async {
    final textFields = find.byType(TextField);
    // 0=nome, 1=email, 2=senha, 3=confirmar senha
    await tester.enterText(textFields.at(0), 'João Silva');
    await tester.enterText(textFields.at(1), 'user@test.com');
    await tester.enterText(textFields.at(2), 'Abc@159');
    await tester.pump();
    await tester.enterText(textFields.at(3), 'Abc@159');
    await tester.pump();
  }

  group('SignupPage', () {
    testWidgets('renderiza título, campos e botão criar conta', (
      tester,
    ) async {
      await pumpSignup(tester);

      expect(find.text('Criar conta'), findsWidgets);
      expect(find.byType(NameWidget), findsOneWidget);
      expect(find.byType(EmailWidget), findsOneWidget);
      expect(find.byType(PasswordWidget), findsNWidgets(2));
      expect(find.text('Fazer login'), findsOneWidget);
    });

    testWidgets('renderiza texto descritivo', (tester) async {
      await pumpSignup(tester);

      expect(
        find.textContaining('Crie sua conta para salvar rotas'),
        findsOneWidget,
      );
    });

    testWidgets('botão desabilitado com campos vazios', (tester) async {
      await pumpSignup(tester);

      await tester.ensureVisible(find.text('Criar conta').last);
      await tester.tap(find.text('Criar conta').last);
      await tester.pumpAndSettle();

      // Não deve navegar a lugar nenhum (apenas o push inicial da home)
      expect(observer.pushed.length, 1);
    });

    testWidgets('botão habilitado com todos os campos válidos', (
      tester,
    ) async {
      await pumpSignup(tester);
      await fillAllFieldsValid(tester);

      await tester.ensureVisible(find.text('Criar conta').last);

      // Quando habilitado, RSButton não envolve com Opacity(0.5)
      final opacityFinder = find.ancestor(
        of: find.text('Criar conta').last,
        matching: find.byWidgetPredicate(
          (w) => w is Opacity && w.opacity == 0.5,
        ),
      );
      expect(opacityFinder, findsNothing);
    });

    testWidgets('"Fazer login" navega para a tela de login', (tester) async {
      await pumpSignup(tester);

      await tester.ensureVisible(find.text('Fazer login'));
      await tester.tap(find.text('Fazer login'));
      await tester.pumpAndSettle();

      expect(observer.pushed.contains(Routes.loginRoute), isTrue);
    });

    testWidgets('renderiza "Já tem conta?" com link', (tester) async {
      await pumpSignup(tester);

      expect(find.text('Já tem conta?'), findsOneWidget);
      expect(find.text('Fazer login'), findsOneWidget);
    });
  });
}
