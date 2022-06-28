import 'package:appclo/constant/constant.dart';
import 'package:appclo/modules/auth/controller/auth_bloc.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthBloc authBloc = AuthBloc();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  @override
  void onReady() {}
  @override
  void onClose() {}
}
