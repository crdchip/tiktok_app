import 'package:appclo/widget/text_fiel_container.dart';
import 'package:flutter/material.dart';

class FormRegisterPass extends StatelessWidget {
  const FormRegisterPass({
    Key? key,
    required this.passController,
  }) : super(key: key);
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
          controller: passController,
          decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: Colors.grey[300],
              ),
              hintText: "UserName",
              hintStyle:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              border: InputBorder.none)),
    );
  }
}
