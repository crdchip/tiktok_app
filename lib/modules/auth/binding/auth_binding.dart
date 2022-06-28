import 'package:appclo/modules/auth/controller/auth_controller.dart';
import 'package:get/instance_manager.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
