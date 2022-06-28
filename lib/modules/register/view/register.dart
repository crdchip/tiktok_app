import 'package:appclo/config/routes/pages.dart';
import 'package:appclo/modules/auth/controller/auth_bloc.dart';
import 'package:appclo/modules/auth/controller/auth_controller.dart';
import 'package:appclo/modules/auth/view/component/form_button.dart';
import 'package:appclo/modules/auth/view/component/form_pass_word.dart';
import 'package:appclo/modules/register/models/form_email_register.dart';
import 'package:appclo/modules/register/models/form_password_register.dart';
import 'package:appclo/modules/register/models/form_phone_register.dart';
import 'package:appclo/modules/register/models/form_user_register.dart';
import 'package:appclo/widget/firebase/firebase_auth.dart';
import 'package:appclo/widget/form_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterPage extends GetView<AuthController> {
  RegisterPage({Key? key}) : super(key: key);

  AuthBloc authBloc = AuthBloc();

  String routes = "/register";

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormRegisterUserName(
            nameController: nameController,
          ),
          const SizedBox(
            height: 20,
          ),
          FormRegisterPhone(
            phoneController: phoneController,
          ),
          const SizedBox(
            height: 20,
          ),
          FormRegisterEmail(
            emailController: emailController,
          ),
          const SizedBox(
            height: 20,
          ),
          FormRegisterPass(
            passController: passController,
          ),
          const SizedBox(
            height: 20,
          ),
          FormButton(
            text: 'Register',
            onLogin: () {
              _onSingUpClicked();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.AUTH);
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Login Now!",
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

  _onSingUpClicked() {
    var isValid = authBloc.isValid(nameController.text, emailController.text,
        passController.text, phoneController.text);
    if (isValid) {
      authBloc.signUp(nameController.text, emailController.text,
          passController.text, phoneController.text, () {
        Get.toNamed(Routes.HOMEPAGE);
      });
    }
  }
}
