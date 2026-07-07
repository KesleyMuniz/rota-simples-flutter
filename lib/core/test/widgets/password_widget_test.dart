import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/widgets/password_widget.dart';

void main() {
  Future<void> pumpWidget(
    WidgetTester tester, {
    ValueChanged<bool>? onValidityChanged,
    bool? showRules,
  }) {
    return tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PasswordWidget(
            onValidityChanged: onValidityChanged,
            showRules: showRules,
          ),
        ),
      ),
    );
  }

  group('PasswordWidget', () {
    testWidgets('renderiza o label SENHA', (tester) async {
      await pumpWidget(tester);

      expect(find.text('SENHA'), findsOneWidget);
    });

    testWidgets('as regras só aparecem quando o campo recebe foco', (
      tester,
    ) async {
      await pumpWidget(tester, showRules: true);

      expect(find.textContaining('6 a 20 caracteres'), findsNothing);

      await tester.tap(find.byType(TextField));
      await tester.pump();

      expect(find.textContaining('6 a 20 caracteres'), findsOneWidget);
      expect(find.textContaining('caractere especial'), findsOneWidget);
      expect(find.textContaining('maiúscula e minúscula'), findsOneWidget);
      expect(find.textContaining('1 número'), findsOneWidget);
      expect(find.textContaining('sequência numérica'), findsOneWidget);
    });

    testWidgets('senha válida notifica validade true', (tester) async {
      bool? valid;
      await pumpWidget(tester, onValidityChanged: (v) => valid = v);

      await tester.enterText(find.byType(TextField), 'Abc@159');
      await tester.pump();

      expect(valid, isTrue);
    });

    testWidgets('senha inválida notifica validade false', (tester) async {
      bool? valid;
      await pumpWidget(tester, onValidityChanged: (v) => valid = v);

      await tester.enterText(find.byType(TextField), 'abc');
      await tester.pump();

      expect(valid, isFalse);
    });

    testWidgets('senha com sequência numérica é inválida', (tester) async {
      bool? valid;
      await pumpWidget(tester, onValidityChanged: (v) => valid = v);

      await tester.enterText(find.byType(TextField), 'Abc@123');
      await tester.pump();

      expect(valid, isFalse);
    });
  });
}
