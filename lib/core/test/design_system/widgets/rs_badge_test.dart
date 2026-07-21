import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_badge.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('RSBadge', () {
    testWidgets('renderiza o label', (tester) async {
      await tester.pumpWidget(wrap(const RSBadge(label: 'PRO')));

      expect(find.text('PRO'), findsOneWidget);
    });

    testWidgets('renderiza todas as variantes', (tester) async {
      for (final variant in RSBadgeVariant.values) {
        await tester.pumpWidget(
          wrap(RSBadge(label: 'X', variant: variant)),
        );
        expect(find.text('X'), findsOneWidget);
      }
    });
  });
}
