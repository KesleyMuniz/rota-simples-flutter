import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/widgets/name_widget.dart';

void main() {
  Future<bool?> pumpAndType(WidgetTester tester, String text) async {
    bool? valid;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NameWidget(onValidityChanged: (v) => valid = v),
        ),
      ),
    );

    if (text.isNotEmpty) {
      await tester.enterText(find.byType(TextField), text);
      await tester.pump();
    }
    return valid;
  }

  group('NameWidget', () {
    testWidgets('renderiza label e hint', (tester) async {
      await pumpAndType(tester, '');

      expect(find.text('NOME COMPLETO'), findsOneWidget);
      expect(find.text('Seu nome completo'), findsOneWidget);
    });

    testWidgets('nome completo válido notifica true', (tester) async {
      final valid = await pumpAndType(tester, 'João Silva');

      expect(valid, isTrue);
      expect(find.text('Nome inválido'), findsNothing);
    });

    testWidgets('nome com acento válido notifica true', (tester) async {
      final valid = await pumpAndType(tester, 'José André');

      expect(valid, isTrue);
    });

    testWidgets('apenas primeiro nome notifica false e mostra erro', (
      tester,
    ) async {
      final valid = await pumpAndType(tester, 'João');

      expect(valid, isFalse);
      expect(find.text('Nome inválido'), findsOneWidget);
    });

    testWidgets('ao limpar o campo, remove o erro e fica inválido', (
      tester,
    ) async {
      bool? valid;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: NameWidget(onValidityChanged: (v) => valid = v),
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), 'João');
      await tester.pump();
      expect(find.text('Nome inválido'), findsOneWidget);

      await tester.enterText(find.byType(TextField), '');
      await tester.pump();

      expect(valid, isFalse);
      expect(find.text('Nome inválido'), findsNothing);
    });
  });
}
