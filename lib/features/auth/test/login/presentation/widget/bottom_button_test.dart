import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/features/auth/login/presentation/widget/bottom_button.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('BottomButton', () {
    testWidgets('renderiza o label', (tester) async {
      await tester.pumpWidget(
        wrap(BottomButton(label: 'ENTRAR', onPressed: () {})),
      );

      expect(find.text('ENTRAR'), findsOneWidget);
    });

    testWidgets('dispara onPressed ao tocar', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        wrap(BottomButton(label: 'ENTRAR', onPressed: () => taps++)),
      );

      await tester.tap(find.byType(BottomButton));
      await tester.pump();

      expect(taps, 1);
    });

    testWidgets('fica desabilitado quando onPressed é null', (tester) async {
      await tester.pumpWidget(wrap(const BottomButton(label: 'ENTRAR')));

      final button = tester.widget<ElevatedButton>(
        find.byType(ElevatedButton),
      );
      expect(button.onPressed, isNull);
    });

    testWidgets('exibe o widget leading quando informado', (tester) async {
      await tester.pumpWidget(
        wrap(
          BottomButton(
            label: 'ENTRAR',
            onPressed: () {},
            leading: const Icon(Icons.login),
          ),
        ),
      );

      expect(find.byIcon(Icons.login), findsOneWidget);
    });

    testWidgets('aplica a cor de fundo customizada', (tester) async {
      await tester.pumpWidget(
        wrap(
          BottomButton(
            label: 'ENTRAR',
            onPressed: () {},
            color: Colors.red,
          ),
        ),
      );

      final button = tester.widget<ElevatedButton>(
        find.byType(ElevatedButton),
      );
      final bg = button.style?.backgroundColor?.resolve({});
      expect(bg, Colors.red);
    });
  });
}
