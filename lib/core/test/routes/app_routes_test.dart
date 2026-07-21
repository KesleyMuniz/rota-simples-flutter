import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/routes/app_routes.dart';
import 'package:rotasimples/core/routes/routes.dart';
import 'package:rotasimples/features/auth/login/presentation/page/login_page.dart';
import 'package:rotasimples/features/auth/splash/presentation/splash_screen.dart';
import 'package:rotasimples/features/route_planning/home/presentation/home_screen.dart';

void main() {
  /// Monta o app usando o [AppRoutes] e navega para [route].
  Future<void> pumpRoute(WidgetTester tester, String route) {
    return tester.pumpWidget(
      MaterialApp(
        initialRoute: route,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }

  group('AppRoutes', () {
    test('a rota inicial é a de login', () {
      expect(AppRoutes.initial, Routes.loginRoute);
    });

    test('gera sempre uma MaterialPageRoute', () {
      expect(
        AppRoutes.onGenerateRoute(RouteSettings(name: Routes.loginRoute)),
        isA<MaterialPageRoute>(),
      );
    });

    test('rota nula ainda gera uma MaterialPageRoute (fallback)', () {
      expect(
        AppRoutes.onGenerateRoute(const RouteSettings(name: null)),
        isA<MaterialPageRoute>(),
      );
    });

    testWidgets('mapeia a rota de login para LoginScreenPage', (tester) async {
      await pumpRoute(tester, Routes.loginRoute);
      expect(find.byType(LoginScreenPage), findsOneWidget);
    });

    testWidgets('mapeia a rota de splash para SplashScreen', (tester) async {
      await pumpRoute(tester, Routes.splashRoute);
      expect(find.byType(SplashScreen), findsOneWidget);
    });

    testWidgets('mapeia a rota de home para HomeScreen', (tester) async {
      await pumpRoute(tester, Routes.homeRoute);
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('rota desconhecida cai no fallback (SplashScreen)', (
      tester,
    ) async {
      await pumpRoute(tester, '/rota-inexistente');
      expect(find.byType(SplashScreen), findsOneWidget);
    });
  });
}
