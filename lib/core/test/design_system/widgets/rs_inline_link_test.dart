import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_inline_link.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('RSInlineLink', () {
    testWidgets('renderiza o texto e o rótulo de ação', (tester) async {
      await tester.pumpWidget(
        wrap(
          RSInlineLink(
            text: 'Não tem conta?',
            actionLabel: 'Cadastre-se',
            onTap: () {},
          ),
        ),
      );

      expect(find.text('Não tem conta?'), findsOneWidget);
      expect(find.text('Cadastre-se'), findsOneWidget);
    });

    testWidgets('tocar no rótulo de ação dispara onTap', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        wrap(
          RSInlineLink(
            text: 'Não tem conta?',
            actionLabel: 'Cadastre-se',
            onTap: () => taps++,
          ),
        ),
      );

      await tester.tap(find.text('Cadastre-se'));
      await tester.pump();

      expect(taps, 1);
    });
  });
}
