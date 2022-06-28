import 'package:appclo/widget/text_fiel_container.dart';
import 'package:flutter/material.dart';

class FormRegisterEmail extends StatelessWidget {
  const FormRegisterEmail({
    Key? key,
    required this.emailController,
  }) : super(key: key);
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
          controller: emailController,
          decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.grey[300],
              ),
              hintText: "Email",
              hintStyle:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              border: InputBorder.none)),
    );
  }
}
