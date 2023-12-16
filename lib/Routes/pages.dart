import 'package:get/get.dart' show GetPage, Transition;
import 'package:tom_seller_app/Routes/routes.dart';
import '../Modules/Login/login_binding.dart';
import '../Modules/Login/login_screen.dart';
import '../Modules/SplashScreen/splash_screen.dart';


const Transition transition = Transition.native;

class AppPages {
  static const INITIAL = Routes.splashScreen;

  static final routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.native),
    GetPage(
        name: Routes.loginScreen,
        binding: LoginBinding(),
        page: () => const LoginScreen(),
        transition: Transition.native),
  ];
}
