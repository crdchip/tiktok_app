import 'package:appclo/modules/auth/view/auth_page.dart';
import 'package:appclo/modules/dashboar/view/dash_boar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (_) {
      return controller.userStatus == true ? DashBoarPage() : AuthPage();
    });
  }
}
