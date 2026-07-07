import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/features/auth/login/presentation/widget/email_widget.dart';

void main() {
  Future<bool?> pumpAndType(WidgetTester tester, String text) async {
    bool? valid;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EmailWidget(onValidityChanged: (v) => valid = v),
        ),
      ),
    );

    if (text.isNotEmpty) {
      await tester.enterText(find.byType(TextField), text);
      await tester.pump();
    }
    return valid;
  }

  group('EmailWidget', () {
    testWidgets('renderiza o label e o hint', (tester) async {
      await pumpAndType(tester, '');

      expect(find.text('EMAIL'), findsOneWidget);
      expect(find.text('seu@email.com'), findsOneWidget);
    });

    testWidgets('email válido notifica validade true e não mostra erro', (
      tester,
    ) async {
      final valid = await pumpAndType(tester, 'user@test.com');

      expect(valid, isTrue);
      expect(find.text('Email inválido'), findsNothing);
    });

    testWidgets('email inválido notifica false e mostra mensagem de erro', (
      tester,
    ) async {
      final valid = await pumpAndType(tester, 'não-é-email');

      expect(valid, isFalse);
      expect(find.text('Email inválido'), findsOneWidget);
    });

    testWidgets('ao limpar o campo, remove o erro e fica inválido', (
      tester,
    ) async {
      bool? valid;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: EmailWidget(onValidityChanged: (v) => valid = v),
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), 'abc');
      await tester.pump();
      expect(find.text('Email inválido'), findsOneWidget);

      await tester.enterText(find.byType(TextField), '');
      await tester.pump();

      expect(valid, isFalse);
      expect(find.text('Email inválido'), findsNothing);
    });
  });
}
