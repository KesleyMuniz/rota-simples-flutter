import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/design_system/theme/rs_theme.dart';
import 'core/routes/app_routes.dart';
import 'features/auth/login/presentation/page/login_page.dart';

void main() {
  runApp(const ProviderScope(child: RotaSimples()));
}

class RotaSimples extends StatelessWidget {
  const RotaSimples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RotaSimples',
      debugShowCheckedModeBanner: false,
      theme: rsThemeDark(),
      home: const LoginScreenPage(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
