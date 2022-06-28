import 'package:appclo/widget/text_fiel_container.dart';
import 'package:appclo/widget/text_fiel_login.dart';
import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({Key? key, required this.text, required this.onLogin})
      : super(key: key);
  final String text;
  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    return TextFielLogin(
        child: FlatButton(onPressed: () => onLogin(), child: Text(text)));
  }
}
