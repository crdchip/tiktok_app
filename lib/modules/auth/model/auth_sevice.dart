import 'package:appclo/config/routes/pages.dart';
import 'package:appclo/modules/splashpage/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../config/data/enums/auth_status.dart';

class AuthService extends GetxService {
  // login() {
  //   Get.find<SplashController>().updateController(AuthStatus.LOGGED_IN);
  // }

  // logout() {
  //   print("out");
  //   Get.offNamedUntil(Routes.SPLASH, (_) => false);
  //   Get.find<SplashController>().updateController(AuthStatus.NOT_LOGGED_IN);
  // }
}
