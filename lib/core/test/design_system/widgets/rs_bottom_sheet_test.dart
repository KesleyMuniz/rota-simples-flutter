import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_bottom_sheet.dart';

void main() {
  /// App com um botão que abre o bottom sheet usando o próprio contexto.
  Widget appOpening({String? title, required Widget child}) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () =>
                  showRSBottomSheet(context: context, title: title, child: child),
              child: const Text('abrir'),
            ),
          ),
        ),
      ),
    );
  }

  group('showRSBottomSheet', () {
    testWidgets('exibe o filho e o título', (tester) async {
      await tester.pumpWidget(
        appOpening(title: 'Filtros', child: const Text('conteúdo do sheet')),
      );

      await tester.tap(find.text('abrir'));
      await tester.pumpAndSettle();

      expect(find.text('Filtros'), findsOneWidget);
      expect(find.text('conteúdo do sheet'), findsOneWidget);
    });

    testWidgets('sem título renderiza apenas o filho', (tester) async {
      await tester.pumpWidget(
        appOpening(child: const Text('só o filho')),
      );

      await tester.tap(find.text('abrir'));
      await tester.pumpAndSettle();

      expect(find.text('só o filho'), findsOneWidget);
    });
  });
}
