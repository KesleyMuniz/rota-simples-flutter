import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_card.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('RSCard', () {
    testWidgets('renderiza o filho', (tester) async {
      await tester.pumpWidget(
        wrap(const RSCard(child: Text('conteúdo'))),
      );

      expect(find.text('conteúdo'), findsOneWidget);
    });

    testWidgets('sem onTap não cria área clicável (InkWell)', (tester) async {
      await tester.pumpWidget(
        wrap(const RSCard(child: Text('conteúdo'))),
      );

      expect(find.byType(InkWell), findsNothing);
    });

    testWidgets('com onTap dispara o callback ao tocar', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        wrap(
          RSCard(onTap: () => taps++, child: const Text('conteúdo')),
        ),
      );

      await tester.tap(find.text('conteúdo'));
      await tester.pump();

      expect(taps, 1);
    });

    testWidgets('variante elevated também renderiza o filho', (tester) async {
      await tester.pumpWidget(
        wrap(const RSCard(elevated: true, child: Text('conteúdo'))),
      );

      expect(find.text('conteúdo'), findsOneWidget);
    });
  });
}
