import 'package:flutter_app_cat_happy/src/pages/auth/sign_in_screen.dart';
import 'package:flutter_app_cat_happy/src/pages/auth/sing_up_screen.dart';
import 'package:flutter_app_cat_happy/src/pages/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../pages/base/base_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => const SplashScreen(),
      name: PagesRoutes.splashRoute,
    ),
    GetPage(
      page: () => SignInScreen(),
      name: PagesRoutes.singInRoute,
    ),
    GetPage(
      page: () => SingUpScreen(),
      name: PagesRoutes.singUpRoute,
    ),
    GetPage(
      page: () => const BaseScreen(),
      name: PagesRoutes.baseRoute,
    ),
  ];
}

abstract class PagesRoutes {
  static const String splashRoute = '/splash';
  static const String singInRoute = '/sigin';
  static const String singUpRoute = '/singup';
  static const String baseRoute = '/';
}
