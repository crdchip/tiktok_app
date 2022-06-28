import 'package:appclo/config/routes/pages.dart';
import 'package:appclo/modules/auth/controller/auth_controller.dart';
import 'package:appclo/modules/auth/view/component/form_button.dart';
import 'package:appclo/modules/auth/view/component/form_pass_word.dart';
import 'package:appclo/modules/auth/view/component/form_user_name.dart';
import 'package:appclo/widget/firebase/firebase_auth_login.dart';
// import 'package:appclo/widget/firebase/firebase_auth_login.dart';
import 'package:appclo/widget/form_button_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String userEmail = "";
  String routes = "/auth";

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormUserName(
            nameController: nameController,
          ),
          const SizedBox(
            height: 20,
          ),
          FormPassword(
            passwordController: passwordContrller,
          ),
          const SizedBox(
            height: 20,
          ),
          FormButton(
            text: 'Login',
            onLogin: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          FormButtonIcon(
            text: "Đăng nhập bằng Google",
            onLogin: googleSignIn,
            icon: "logo-google.jpg",
          ),
          const SizedBox(
            height: 20,
          ),
          FormButtonIcon(
            text: "Đăng nhập bằng Facebook",
            onLogin: () {},
            icon: "logo-google.jpg",
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.REGISTER);
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 13,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? _googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? _googleAuth =
        await _googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: _googleAuth?.idToken,
      accessToken: _googleAuth?.accessToken,
    );
    userEmail = _googleUser!.email;
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
