import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_button.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('RSButton', () {
    testWidgets('renderiza o label', (tester) async {
      await tester.pumpWidget(
        wrap(RSButton(label: 'ENTRAR', onPressed: () {})),
      );

      expect(find.text('ENTRAR'), findsOneWidget);
    });

    testWidgets('dispara onPressed ao tocar', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        wrap(RSButton(label: 'ENTRAR', onPressed: () => taps++)),
      );

      await tester.tap(find.byType(RSButton));
      await tester.pump();

      expect(taps, 1);
    });

    testWidgets('em loading mostra progresso e esconde o label', (
      tester,
    ) async {
      await tester.pumpWidget(
        wrap(RSButton(label: 'ENTRAR', onPressed: () {}, isLoading: true)),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('ENTRAR'), findsNothing);
    });

    testWidgets('renderiza cada variante', (tester) async {
      for (final variant in RSButtonVariant.values) {
        await tester.pumpWidget(
          wrap(
            RSButton(label: 'X', onPressed: () {}, variant: variant),
          ),
        );
        expect(find.text('X'), findsOneWidget);
      }
    });

    testWidgets('fullWidth false não força largura infinita', (tester) async {
      await tester.pumpWidget(
        wrap(
          RSButton(label: 'X', onPressed: () {}, fullWidth: false),
        ),
      );

      expect(find.byType(RSButton), findsOneWidget);
      expect(find.text('X'), findsOneWidget);
    });
  });
}
