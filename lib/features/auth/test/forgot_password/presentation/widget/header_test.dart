import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/design_system.dart';
import 'package:rotasimples/features/auth/forgot_password/presentation/widget/header.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('Header', () {
    testWidgets('renderiza o label recebido', (tester) async {
      await tester.pumpWidget(
        wrap(const Header(iconName: 'lock', label: 'Instruções de teste')),
      );

      expect(find.text('Instruções de teste'), findsOneWidget);
    });

    testWidgets('renderiza o ícone dentro de um RSIconBadge', (tester) async {
      await tester.pumpWidget(
        wrap(const Header(iconName: 'lock', label: 'Instruções de teste')),
      );

      expect(find.byType(RSIconBadge), findsOneWidget);

      final icon = tester.widget<RSIcon>(find.byType(RSIcon));
      expect(icon.name, 'lock');
    });

    testWidgets('usa outro nome de ícone quando informado', (tester) async {
      await tester.pumpWidget(
        wrap(const Header(iconName: 'check', label: 'Concluído')),
      );

      final icon = tester.widget<RSIcon>(find.byType(RSIcon));
      expect(icon.name, 'check');
    });
  });
}
