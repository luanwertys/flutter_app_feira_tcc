import 'package:get/get.dart';
import 'package:tcc/src/pages/auth/view/sign_in_screen.dart';
import 'package:tcc/src/pages/base/base_screen.dart';
import 'package:tcc/src/pages/base/binding/navigation_binding.dart';
import 'package:tcc/src/pages/cart/binding/cart_binding.dart';
import 'package:tcc/src/pages/home/binding/home_binding.dart';
import 'package:tcc/src/pages/orders/binding/orders_binding.dart';
import 'package:tcc/src/pages/product/product_screen.dart';
import 'package:tcc/src/pages/splash/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => ProductScreen(),
      name: PagesRoutes.productRoute,
    ),
    GetPage(
      page: () => const SplashScreen(),
      name: PagesRoutes.splashRoute,
    ),
    GetPage(
      page: () => SignInScreen(),
      name: PagesRoutes.signInRoute,
    ),
    GetPage(
      page: () => SingUpScreen(),
      name: PagesRoutes.signUpRoute,
    ),
    GetPage(
      page: () => const BaseScreen(),
      name: PagesRoutes.baseRoute,
      bindings: [
        NavigationBinding(),
        HomeBinding(),
        CartBinding(),
        OrdersBinding(),
      ],
    ),
  ];
}

abstract class PagesRoutes {
  static const String productRoute = '/product';
  static const String signInRoute = '/signin';
  static const String signUpRoute = '/signup';
  static const String splashRoute = '/splash';
  static const String baseRoute = '/';
}
