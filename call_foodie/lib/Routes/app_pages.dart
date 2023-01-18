import 'package:call_foodie/Modules/Views/home_screen_view.dart';
import 'package:call_foodie/Modules/Views/introScreenView.dart';
import 'package:call_foodie/Modules/Views/intro_screen.dart';
import 'package:call_foodie/Modules/Views/login_page_view.dart';
import 'package:get/get.dart';

import '../Modules/Views/otpView.dart';
import '../Modules/Views/splashView.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: _Paths.introScreen,
      page: () => IntroScreenView(),
    ),
    GetPage(
      name: _Paths.loginPage,
      page: () => const LogInPageView(),
    ),
    GetPage(
      name: _Paths.otpScreen,
      page: () => OtpView(),
    ),
    GetPage(
      name: _Paths.homePage,
      page: () => const HomeScreenView(),
    ),
  ];
}
