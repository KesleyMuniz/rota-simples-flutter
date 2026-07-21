import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/theme/rs_theme.dart';
import 'package:rotasimples/core/design_system/tokens/rs_colors.dart';

void main() {
  /// Aplica o tema num MaterialApp e devolve o ThemeData resolvido —
  /// mesmo caminho usado pelo app real (evita carregar fontes fora do build).
  Future<ThemeData> resolveTheme(WidgetTester tester) async {
    late ThemeData theme;
    await tester.pumpWidget(
      MaterialApp(
        theme: rsThemeDark(),
        home: Builder(
          builder: (context) {
            theme = Theme.of(context);
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    return theme;
  }

  group('rsThemeDark', () {
    testWidgets('é um tema escuro', (tester) async {
      expect((await resolveTheme(tester)).brightness, Brightness.dark);
    });

    testWidgets('usa a cor de fundo do app no scaffold', (tester) async {
      expect(
        (await resolveTheme(tester)).scaffoldBackgroundColor,
        RSColors.bgApp,
      );
    });

    testWidgets('usa o accent como cor primária', (tester) async {
      expect((await resolveTheme(tester)).colorScheme.primary, RSColors.accent);
    });

    testWidgets('define o tema de input preenchido', (tester) async {
      expect((await resolveTheme(tester)).inputDecorationTheme.filled, isTrue);
    });
  });
}
