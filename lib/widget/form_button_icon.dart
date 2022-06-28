import 'package:appclo/widget/text_fiel_login.dart';
import 'package:flutter/material.dart';

class FormButtonIcon extends StatelessWidget {
  const FormButtonIcon(
      {Key? key, required this.text, required this.onLogin, required this.icon})
      : super(key: key);
  final String text;
  final VoidCallback onLogin;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFielLogin(
        child: FlatButton(
            onPressed: () => onLogin(),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/$icon",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(text),
              ],
            )));
  }
}
