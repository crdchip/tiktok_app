import 'package:appclo/config/routes/pages.dart';
import 'package:appclo/modules/auth/controller/auth_controller.dart';

import 'package:appclo/modules/splashpage/binding/splash_binding.dart';
import 'package:appclo/modules/splashpage/view/splash_page.dart';
import 'package:appclo/widget/firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: SplashBinding(),
    initialRoute: Routes.SPLASH,
    getPages: AppPages.pages,
    home: const SplashPage(),
  ));
}
