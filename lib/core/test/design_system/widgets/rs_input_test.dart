import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_input.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('RSInput', () {
    testWidgets('renderiza o label e o hint', (tester) async {
      await tester.pumpWidget(
        wrap(const RSInput(label: 'EMAIL', hint: 'seu@email.com')),
      );

      expect(find.text('EMAIL'), findsOneWidget);
      expect(find.text('seu@email.com'), findsOneWidget);
    });

    testWidgets('dispara onChanged ao digitar', (tester) async {
      String? changed;
      await tester.pumpWidget(
        wrap(RSInput(label: 'EMAIL', onChanged: (v) => changed = v)),
      );

      await tester.enterText(find.byType(TextField), 'oi');

      expect(changed, 'oi');
    });

    testWidgets('exibe a mensagem de erro quando errorText é informado', (
      tester,
    ) async {
      await tester.pumpWidget(
        wrap(const RSInput(label: 'EMAIL', errorText: 'Email inválido')),
      );

      expect(find.text('Email inválido'), findsOneWidget);
    });

    testWidgets('sem errorText não mostra mensagem de erro', (tester) async {
      await tester.pumpWidget(wrap(const RSInput(label: 'EMAIL')));

      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('obscureText oculta o texto digitado', (tester) async {
      await tester.pumpWidget(
        wrap(const RSInput(label: 'SENHA', obscureText: true)),
      );

      final field = tester.widget<TextField>(find.byType(TextField));
      expect(field.obscureText, isTrue);
    });
  });
}
