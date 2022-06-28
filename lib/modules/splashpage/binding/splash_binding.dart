import 'package:appclo/modules/splashpage/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
