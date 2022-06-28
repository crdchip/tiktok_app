import 'package:appclo/modules/auth/view/auth_page.dart';
import 'package:appclo/modules/dashboar/view/dash_boar.dart';
import 'package:appclo/modules/home/view/home_page.dart';
import 'package:appclo/modules/register/view/register.dart';
import 'package:appclo/modules/splashpage/view/splash_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.DASHBOAR,
      page: () => DashBoarPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.HOMEPAGE,
      page: () => HomePage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
  ];
}
