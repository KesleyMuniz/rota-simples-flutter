import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/widgets/password_widget.dart';
import 'package:rotasimples/features/auth/reset_password/presentation/page/reset_password_page.dart';

class _RouteObserver extends NavigatorObserver {
  final popped = <Route<dynamic>>[];

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    popped.add(route);
    super.didPop(route, previousRoute);
  }
}

void main() {
  late _RouteObserver observer;

  Future<void> pumpResetPassword(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    observer = _RouteObserver();
    await tester.pumpWidget(
      MaterialApp(
        navigatorObservers: [observer],
        home: const ResetPasswordPage(),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> fillAllFieldsValid(WidgetTester tester) async {
    final textFields = find.byType(TextField);
    // 0=senha atual, 1=nova senha, 2=confirmar nova senha
    await tester.enterText(textFields.at(0), 'OldPass@1');
    await tester.enterText(textFields.at(1), 'Abc@159');
    await tester.pump();
    await tester.enterText(textFields.at(2), 'Abc@159');
    await tester.pump();
  }

  group('ResetPasswordPage', () {
    testWidgets('renderiza título, 3 campos de senha e botões', (
      tester,
    ) async {
      await pumpResetPassword(tester);

      expect(find.text('Trocar senha'), findsOneWidget);
      expect(find.byType(PasswordWidget), findsNWidgets(3));
      expect(find.text('SENHA ATUAL'), findsOneWidget);
      expect(find.text('NOVA SENHA'), findsOneWidget);
      expect(find.text('CONFIRMAR NOVA SENHA'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Atualizar senha'), findsOneWidget);
    });

    testWidgets('botão "Atualizar senha" desabilitado com campos vazios', (
      tester,
    ) async {
      await pumpResetPassword(tester);

      await tester.ensureVisible(find.text('Atualizar senha'));

      final opacityFinder = find.ancestor(
        of: find.text('Atualizar senha'),
        matching: find.byWidgetPredicate(
          (w) => w is Opacity && w.opacity == 0.5,
        ),
      );
      expect(opacityFinder, findsOneWidget);
    });

    testWidgets('botão habilitado com todos os campos válidos', (
      tester,
    ) async {
      await pumpResetPassword(tester);
      await fillAllFieldsValid(tester);

      await tester.ensureVisible(find.text('Atualizar senha'));

      final opacityFinder = find.ancestor(
        of: find.text('Atualizar senha'),
        matching: find.byWidgetPredicate(
          (w) => w is Opacity && w.opacity == 0.5,
        ),
      );
      expect(opacityFinder, findsNothing);
    });

    testWidgets('botão "Cancelar" fecha a tela (pop)', (tester) async {
      await pumpResetPassword(tester);

      await tester.ensureVisible(find.text('Cancelar'));
      await tester.tap(find.text('Cancelar'));
      await tester.pumpAndSettle();

      expect(observer.popped, isNotEmpty);
    });

    testWidgets('botão voltar da top bar fecha a tela (pop)', (tester) async {
      await pumpResetPassword(tester);

      await tester.tap(find.byType(InkWell).first);
      await tester.pumpAndSettle();

      expect(observer.popped, isNotEmpty);
    });

    testWidgets('renderiza divider entre senha atual e nova senha', (
      tester,
    ) async {
      await pumpResetPassword(tester);

      expect(find.byType(Divider), findsNWidgets(2));
    });
  });
}
