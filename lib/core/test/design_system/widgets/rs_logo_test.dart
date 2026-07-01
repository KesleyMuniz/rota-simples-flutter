import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/design_system/widgets/rs_logo.dart';

void main() {
  Widget wrap(Widget child) =>
      MaterialApp(home: Scaffold(body: Center(child: child)));

  group('RSLogo', () {
    testWidgets('renderiza o ícone SVG e o wordmark por padrão', (
      tester,
    ) async {
      await tester.pumpWidget(wrap(const RSLogo()));

      expect(find.byType(SvgPicture), findsOneWidget);
      expect(find.text('OTIMIZE SUAS ENTREGAS'), findsOneWidget);
    });

    testWidgets('showWordmark false esconde o wordmark', (tester) async {
      await tester.pumpWidget(wrap(const RSLogo(showWordmark: false)));

      expect(find.byType(SvgPicture), findsOneWidget);
      expect(find.text('OTIMIZE SUAS ENTREGAS'), findsNothing);
    });
  });
}
