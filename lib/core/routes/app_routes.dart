import 'package:flutter/material.dart';

import '../../features/auth/forgot_password/forgot_password_route.dart';
import '../../features/auth/forgot_password/presentation/forgot_password_screen.dart';
import '../../features/auth/login/login_route.dart';
import '../../features/auth/login/presentation/page/login_page.dart';
import '../../features/auth/reset_password/presentation/reset_password_screen.dart';
import '../../features/auth/reset_password/reset_password_route.dart';
import '../../features/auth/signup/presentation/signup_screen.dart';
import '../../features/auth/signup/signup_route.dart';
import '../../features/auth/splash/presentation/splash_screen.dart';
import '../../features/auth/splash/splash_route.dart';
import '../../features/delivery_progress/delivery_progress/delivery_progress_route.dart';
import '../../features/delivery_progress/delivery_progress/presentation/delivery_progress_screen.dart';
import '../../features/delivery_progress/shift_completed/presentation/shift_completed_screen.dart';
import '../../features/delivery_progress/shift_completed/shift_completed_route.dart';
import '../../features/history/history/history_route.dart';
import '../../features/history/history/presentation/history_screen.dart';
import '../../features/profile/delete_account/delete_account_route.dart';
import '../../features/profile/delete_account/presentation/delete_account_screen.dart';
import '../../features/profile/edit_profile/edit_profile_route.dart';
import '../../features/profile/edit_profile/presentation/edit_profile_screen.dart';
import '../../features/profile/profile/presentation/profile_screen.dart';
import '../../features/profile/profile/profile_route.dart';
import '../../features/route_planning/add_edit_stop/add_edit_stop_route.dart';
import '../../features/route_planning/add_edit_stop/presentation/add_edit_stop_screen.dart';
import '../../features/route_planning/address_review/address_review_route.dart';
import '../../features/route_planning/address_review/presentation/address_review_screen.dart';
import '../../features/route_planning/home/home_route.dart';
import '../../features/route_planning/home/presentation/home_screen.dart';
import '../../features/route_planning/import_sheet/import_sheet_route.dart';
import '../../features/route_planning/import_sheet/presentation/import_sheet_screen.dart';
import '../../features/route_planning/optimized_route/optimized_route_route.dart';
import '../../features/route_planning/optimized_route/presentation/optimized_route_screen.dart';
import '../../features/route_planning/stop_list/presentation/stop_list_screen.dart';
import '../../features/route_planning/stop_list/stop_list_route.dart';

class AppRoutes {
  AppRoutes._();

  static const initial = LoginRoute.route;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      SplashRoute.route => _build(const SplashScreen()),
      LoginRoute.route => _build(const LoginScreenPage()),
      SignupRoute.route => _build(const SignupScreen()),
      ForgotPasswordRoute.route => _build(const ForgotPasswordScreen()),
      ResetPasswordRoute.route => _build(const ResetPasswordScreen()),
      HomeRoute.route => _build(const HomeScreen()),
      StopListRoute.route => _build(const StopListScreen()),
      AddEditStopRoute.route => _build(const AddEditStopScreen()),
      ImportSheetRoute.route => _build(const ImportSheetScreen()),
      AddressReviewRoute.route => _build(const AddressReviewScreen()),
      OptimizedRouteRoute.route => _build(const OptimizedRouteScreen()),
      DeliveryProgressRoute.route => _build(const DeliveryProgressScreen()),
      ShiftCompletedRoute.route => _build(const ShiftCompletedScreen()),
      HistoryRoute.route => _build(const HistoryScreen()),
      ProfileRoute.route => _build(const ProfileScreen()),
      EditProfileRoute.route => _build(const EditProfileScreen()),
      DeleteAccountRoute.route => _build(const DeleteAccountScreen()),
      _ => _build(const SplashScreen()),
    };
  }

  static MaterialPageRoute<dynamic> _build(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
