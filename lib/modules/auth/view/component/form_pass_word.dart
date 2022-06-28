import 'package:appclo/widget/text_fiel_container.dart';
import 'package:flutter/material.dart';

class FormPassword extends StatefulWidget {
  const FormPassword({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;
  @override
  State<FormPassword> createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  bool iconCheck = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFielContainer(
      child: TextFormField(
          controller: widget.passwordController,
          obscureText: iconCheck ? false : true,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.lock_outline,
              color: Colors.grey[300],
            ),
            hintText: "Password",
            hintStyle:
                TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
            suffixIcon: IconButton(
              icon: iconCheck
                  ? Icon(
                      Icons.visibility,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.visibility_off,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  iconCheck = !iconCheck;
                });
              },
            ),
          )),
    );
  }
}
