import 'dart:async';

import 'package:appclo/widget/firebase/firebase_auth.dart';

class AuthBloc {
  StreamController nameController = StreamController();
  StreamController emailController = StreamController();
  StreamController passController = StreamController();
  StreamController phoneController = StreamController();

  Stream get nameStream => nameController.stream;
  Stream get emailStream => emailController.stream;
  Stream get passStream => passController.stream;
  Stream get phoneStream => phoneController.stream;

  bool isValid(String name, String email, String pass, String phone) {
    if (name == null || name.length == 0) {
      nameController.sink.addError("Nhập tên");
      return false;
    }
    if (phone == null || phone.length == 0) {
      phoneController.sink.addError("Nhập số điện thoại");
      return false;
    }
    if (pass == null || pass.length == 0) {
      passController.sink.addError("Nhập mật khẩu");
      return false;
    }
    if (email == null || email.length == 0) {
      emailController.sink.addError("Nhập email");
      return false;
    }
    return true;
  }

  void signUp(String name, String email, String pass, String phone,
      Function onSuccess) {
    FireAuth().signUp(name, phone, email, pass, onSuccess);
  }

  void dispose() {
    nameController.close();
  }
}
