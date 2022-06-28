import 'package:appclo/widget/text_fiel_container.dart';
import 'package:flutter/material.dart';

class FormRegisterUserName extends StatelessWidget {
  const FormRegisterUserName({
    Key? key,
    required this.nameController,
  }) : super(key: key);
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
          controller: nameController,
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
