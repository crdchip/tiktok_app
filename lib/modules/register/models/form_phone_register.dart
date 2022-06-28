import 'package:appclo/widget/text_fiel_container.dart';
import 'package:flutter/material.dart';

class FormRegisterPhone extends StatelessWidget {
  const FormRegisterPhone({
    Key? key,
    required this.phoneController,
  }) : super(key: key);
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
          controller: phoneController,
          decoration: InputDecoration(
              icon: Icon(
                Icons.phone,
                color: Colors.grey[300],
              ),
              hintText: "Phone",
              hintStyle:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              border: InputBorder.none)),
    );
  }
}
