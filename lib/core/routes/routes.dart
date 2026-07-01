import '../../features/auth/forgot_password/forgot_password_route.dart';
import '../../features/auth/login/login_route.dart';
import '../../features/auth/reset_password/reset_password_route.dart';
import '../../features/auth/signup/signup_route.dart';
import '../../features/auth/splash/splash_route.dart';
import '../../features/delivery_progress/delivery_progress/delivery_progress_route.dart';
import '../../features/delivery_progress/shift_completed/shift_completed_route.dart';
import '../../features/history/history/history_route.dart';
import '../../features/profile/delete_account/delete_account_route.dart';
import '../../features/profile/edit_profile/edit_profile_route.dart';
import '../../features/profile/profile/profile_route.dart';
import '../../features/route_planning/add_edit_stop/add_edit_stop_route.dart';
import '../../features/route_planning/address_review/address_review_route.dart';
import '../../features/route_planning/home/home_route.dart';
import '../../features/route_planning/import_sheet/import_sheet_route.dart';
import '../../features/route_planning/optimized_route/optimized_route_route.dart';
import '../../features/route_planning/stop_list/stop_list_route.dart';

class Routes {
  Routes._();

  static const splashRoute = SplashRoute.route;
  static const loginRoute = LoginRoute.route;
  static const signupRoute = SignupRoute.route;
  static const forgotPasswordRoute = ForgotPasswordRoute.route;
  static const resetPasswordRoute = ResetPasswordRoute.route;

  static const homeRoute = HomeRoute.route;
  static const stopListRoute = StopListRoute.route;
  static const addEditStopRoute = AddEditStopRoute.route;
  static const importSheetRoute = ImportSheetRoute.route;
  static const addressReviewRoute = AddressReviewRoute.route;
  static const optimizedRouteRoute = OptimizedRouteRoute.route;

  static const deliveryProgressRoute = DeliveryProgressRoute.route;
  static const shiftCompletedRoute = ShiftCompletedRoute.route;

  static const historyRoute = HistoryRoute.route;

  static const profileRoute = ProfileRoute.route;
  static const editProfileRoute = EditProfileRoute.route;
  static const deleteAccountRoute = DeleteAccountRoute.route;
}
