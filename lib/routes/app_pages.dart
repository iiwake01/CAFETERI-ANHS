import 'package:cafeterianhs/bindings/cart_binding.dart';
import 'package:cafeterianhs/bindings/main_binding.dart';
import 'package:cafeterianhs/bindings/splash_binding.dart';
import 'package:cafeterianhs/views/cart_page.dart';
import 'package:cafeterianhs/views/main_page.dart';
import 'package:cafeterianhs/views/splash_page.dart';
import 'package:get/get.dart';
part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 3000),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => const MainPage(),
      binding: MainBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.CART,
      page: () => const CartPage(),
      binding: CartBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}